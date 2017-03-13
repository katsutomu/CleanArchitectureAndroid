package ${packageName}.application;

import ${packageName}.R;
import ${superClassFqcn};
import android.os.Bundle;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${activityClass} extends ${superClass} {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
<#include "../../../../../activities/common/jni_code_usage.java.ftl">
    }
<#include "../../../../../activities/common/jni_code_snippet.java.ftl">
}
