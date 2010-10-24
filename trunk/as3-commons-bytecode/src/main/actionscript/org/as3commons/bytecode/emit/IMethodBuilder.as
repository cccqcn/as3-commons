/*
 * Copyright 2007-2010 the original author or authors.
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
package org.as3commons.bytecode.emit {
	import org.as3commons.bytecode.abc.MethodInfo;
	import org.as3commons.bytecode.emit.impl.MethodArgument;

	public interface IMethodBuilder extends IEmitMember {
		function get returnType():String;
		function set returnType(value:String):void;
		function get arguments():Array;
		function set arguments(value:Array):void;
		function get hasRestArguments():Boolean;
		function set hasRestArguments(value:Boolean):void;
		function defineMethodBody():IMethodBodyBuilder;
		function defineArgument(type:String = "", isOptional:Boolean = false, defaultValue:Object = null):MethodArgument;
		function build(initScopeDepth:uint = 1):MethodInfo;
	}
}