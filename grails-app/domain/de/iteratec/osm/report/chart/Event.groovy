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

package de.iteratec.osm.report.chart

import de.iteratec.osm.measurement.schedule.JobGroup

/**
 * Event
 * A domain class describes the data object and it's mapping to the database
 */
class Event {

    Date date
    String fromHour
    String shortName
    String htmlDescription
    Boolean globallyVisible = false

    /**
     * The {@link JobGroup} this event is assigned to
     */
    static hasMany = [jobGroup: JobGroup]

    static mapping = {
        date(type: 'date')
        globallyVisible(defaultValue: false)
    }

//    def beforeValidate() {
//        log.info(date)
//        def formatter = new SimpleDateFormat("dd.MM.yyyy")
//        date = (Date)formatter.parse(date)
//    }

	static constraints = {
        date(nullable: false)
        fromHour()
        shortName(unique:true, maxSize: 255)
        htmlDescription(maxSize: 255, nullable: true)
        globallyVisible()
    }
}