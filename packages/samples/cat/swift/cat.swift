/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * Sample code using the experimental Swift 3 runtime
 * Equivalent to unix cat command.
 * Return all the lines in an array. All other fields in the input message are stripped.
 * @param lines An array of strings.
 */
func main(args: [String:Any]) -> [String:Any] {
    if let lines = args["lines"] as? [Any] {
        var payload = ""
        for line in lines {
            payload += "\(line)\n"
        }
        return ["lines": lines, "payload": payload]
    } else {
        return ["error": "You must specify a lines parameter!"]
    }
}
