package com.itwill.user.controller;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface MyAnnotation {
	String value() default "myAnnotation";
	String name() default "";
	int age() default 25;
	String[] basePackages() default {};
	boolean required() default false;
}
