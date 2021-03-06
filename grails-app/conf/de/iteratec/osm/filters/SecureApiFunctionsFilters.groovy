/*
* OpenSpeedMonitor (OSM)
* Copyright 2014 iteratec GmbH
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* 	http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

package de.iteratec.osm.filters

import de.iteratec.osm.api.ApiKey

/**
 * SecureApiFunctionsFilters
 * Checks whether ...
 * <ul>
 *     <li>apiKey is sent via parameter</li>
 *     <li>An apiKey exist with given key value from parameter</li>
 *     <li>apiKey is valid</li>
 * </ul>
 * If one of the checks above fail the subsequent action isn't reached and an error is sent instead.
 */
class SecureApiFunctionsFilters {

    def filters = {
        secureApiFunctions(controller: 'restApi', action: 'securedViaApiKey*', find: true){
            before = {
                if( params.apiKey == null ) {
                    prepareErrorResponse(response, 400, "This api function requires an apiKey with respected permission. You " +
                            "have to submit this key as param 'apiKey'.")
                    return false

                }
                ApiKey apiKey = ApiKey.findBySecretKey(params.apiKey)
                if( apiKey == null ) {
                    prepareErrorResponse(response, 404, "The submitted apiKey doesn't exist.")
                    return false
                }
                if( !apiKey.valid ) {
                    prepareErrorResponse(response, 403, "The submitted apiKey is invalid.")
                    return false
                }
                params['validApiKey'] = apiKey
                return true
            }
        }
    }
    private void prepareErrorResponse(javax.servlet.http.HttpServletResponse response, Integer httpStatus, String message) {
        response.setContentType('text/plain;charset=UTF-8')
        response.status=httpStatus

        Writer textOut = new OutputStreamWriter(response.getOutputStream())
        textOut.write(message)
        response.status=httpStatus

        textOut.flush()
        response.getOutputStream().flush()
    }
}
