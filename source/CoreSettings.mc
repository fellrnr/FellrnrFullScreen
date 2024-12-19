/* Copyright (C) 2021, greenTEG AG
 *    info@CoreBodyTemp.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//From https://github.com/CoreBodyTemp/ConnectIQ-CoreTemp/blob/main/CORE-DataField-Example/source/CoreSettings.mc

using Toybox.Application;


class CoreSettings {
	static const KEY_ANT_ID = "CORE_ANT_ID";
	static const USE_CORE = "UseCore";


    static function getCoreProperty(key,defaultValue) {
    	// Get the stored value
    	//---------------------
		var result = defaultValue;
        var app = Application.getApp();

        if ((app != null) && (key != null)) {
	        result = app.getProperty( key );	// get the stored value
	        
	        if(result == null) {
	            result = defaultValue;
	        }        
        }

        return result;
    }   // end func getCoreProperty


    static function setCoreProperty(key,value) {
    	// Set the stored value
    	//---------------------
		var app = Application.getApp();
				
     	if ((app != null) && (key != null)) {
        	app.setProperty( key, value);		// set the stored value
       	}
    }   // end func setCoreProperty
    

	//-----------------
	// get/set ANT id's
	//-----------------
    static function getCoreAntId() {
		return getCoreProperty(KEY_ANT_ID, 0);
    }   // end func getCoreAntId
    
    static function setCoreAntId(value) {
        setCoreProperty(KEY_ANT_ID, value);
    }   // end func setCoreAntId

    static function getUseCore() {
		return getCoreProperty(KEY_ANT_ID, false);
    }


}   // end class CoreSettings
