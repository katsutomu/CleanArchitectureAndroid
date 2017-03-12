<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if hasActivity>
    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/application/${activityClass}.java" />
</#if>
<#if hasViewModel>
    <instantiate from="root/src/app_package/ViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/viewmodel/${viewModelClass}.java" />
</#if>
<#if hasUseCase>
    <instantiate from="root/src/app_package/UseCase.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/usecase/${useCaseClass}.java" />
</#if>
<#if hasMapper>
    <instantiate from="root/src/app_package/Mapper.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/application/mapper/${mapperClass}.java" />
</#if>
<#if hasRepository>
    <instantiate from="root/src/app_package/RepositoryInterface.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/domain/repository/${repositoryInterface}.java" />
    <instantiate from="root/src/app_package/Repository.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dataaccess/repository/${repositoryClass}.java" />
</#if>
<#if hasEntity>
    <instantiate from="root/src/app_package/Entity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/domain/entity/${entityClass}.java" />
</#if>
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
