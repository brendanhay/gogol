{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types
    (
    -- * Service Configuration
      pageSpeedService

    -- * OAuth Scopes
    , openidScope

    -- * LighthouseResultV5CategoryGroups
    , LighthouseResultV5CategoryGroups
    , lighthouseResultV5CategoryGroups
    , lrvcgAddtional

    -- * RuntimeError
    , RuntimeError
    , runtimeError
    , reCode
    , reMessage

    -- * ConfigSettings
    , ConfigSettings
    , configSettings
    , csLocale
    , csFormFactor
    , csChannel
    , csEmulatedFormFactor
    , csOnlyCategories

    -- * StackPack
    , StackPack
    , stackPack
    , spDescriptions
    , spId
    , spTitle
    , spIconDataURL

    -- * LighthouseAuditResultV5Details
    , LighthouseAuditResultV5Details
    , lighthouseAuditResultV5Details
    , larvdAddtional

    -- * PagespeedAPIRunPagespeedStrategy
    , PagespeedAPIRunPagespeedStrategy (..)

    -- * LighthouseAuditResultV5
    , LighthouseAuditResultV5
    , lighthouseAuditResultV5
    , larvScore
    , larvNumericValue
    , larvExplanation
    , larvWarnings
    , larvScoreDisplayMode
    , larvDisplayValue
    , larvDetails
    , larvNumericUnit
    , larvId
    , larvTitle
    , larvErrorMessage
    , larvDescription

    -- * Environment
    , Environment
    , environment
    , eHostUserAgent
    , eBenchmarkIndex
    , eNetworkUserAgent

    -- * PagespeedAPIPagespeedResponseV5
    , PagespeedAPIPagespeedResponseV5
    , pagespeedAPIPagespeedResponseV5
    , paprvKind
    , paprvOriginLoadingExperience
    , paprvVersion
    , paprvCaptchaResult
    , paprvId
    , paprvLoadingExperience
    , paprvLighthouseResult
    , paprvAnalysisUTCTimestamp

    -- * PagespeedAPILoadingExperienceV5Metrics
    , PagespeedAPILoadingExperienceV5Metrics
    , pagespeedAPILoadingExperienceV5Metrics
    , palevmAddtional

    -- * LighthouseResultV5
    , LighthouseResultV5
    , lighthouseResultV5
    , lrvRuntimeError
    , lrvCategoryGroups
    , lrvStackPacks
    , lrvFinalURL
    , lrvConfigSettings
    , lrvEnvironment
    , lrvLighthouseVersion
    , lrvRunWarnings
    , lrvRequestedURL
    , lrvCategories
    , lrvFetchTime
    , lrvUserAgent
    , lrvTiming
    , lrvAudits
    , lrvI18n

    -- * Categories
    , Categories
    , categories
    , cBestPractices
    , cPerformance
    , cPwa
    , cSeo
    , cAccessibility

    -- * Bucket
    , Bucket
    , bucket
    , bMax
    , bProportion
    , bMin

    -- * PagespeedVersion
    , PagespeedVersion
    , pagespeedVersion
    , pvMinor
    , pvMajor

    -- * PagespeedAPIRunPagespeedCategory
    , PagespeedAPIRunPagespeedCategory (..)

    -- * LighthouseCategoryV5
    , LighthouseCategoryV5
    , lighthouseCategoryV5
    , lcvManualDescription
    , lcvScore
    , lcvAuditRefs
    , lcvId
    , lcvTitle
    , lcvDescription

    -- * CategoryGroupV5
    , CategoryGroupV5
    , categoryGroupV5
    , cgvTitle
    , cgvDescription

    -- * PagespeedAPILoadingExperienceV5
    , PagespeedAPILoadingExperienceV5
    , pagespeedAPILoadingExperienceV5
    , palevOriginFallback
    , palevMetrics
    , palevInitialURL
    , palevId
    , palevOverallCategory

    -- * AuditRefs
    , AuditRefs
    , auditRefs
    , arGroup
    , arAcronym
    , arWeight
    , arRelevantAudits
    , arId

    -- * StackPackDescriptions
    , StackPackDescriptions
    , stackPackDescriptions
    , spdAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * RendererFormattedStrings
    , RendererFormattedStrings
    , rendererFormattedStrings
    , rfsRuntimeUnknown
    , rfsCalculatorLink
    , rfsLabDataTitle
    , rfsDropdownSaveHTML
    , rfsRuntimeSettingsNetworkThrottling
    , rfsRuntimeDesktopEmulation
    , rfsWarningHeader
    , rfsRuntimeSettingsUA
    , rfsOpportUnityResourceColumnLabel
    , rfsManualAuditsGroupTitle
    , rfsDropdownSaveGist
    , rfsRuntimeSettingsUANetwork
    , rfsCrcInitialNavigation
    , rfsDropdownPrintSummary
    , rfsVarianceDisclaimer
    , rfsRuntimeSettingsTitle
    , rfsPassedAuditsGroupTitle
    , rfsRuntimeSettingsDevice
    , rfsDropdownViewer
    , rfsFooterIssue
    , rfsRuntimeSettingsAxeVersion
    , rfsToplevelWarningsMessage
    , rfsErrorMissingAuditInfo
    , rfsRuntimeSettingsURL
    , rfsRuntimeSettingsCPUThrottling
    , rfsThirdPartyResourcesLabel
    , rfsDropdownSaveJSON
    , rfsRuntimeSettingsChannel
    , rfsCrcLongestDurationLabel
    , rfsThrottlingProvided
    , rfsDropdownPrintExpanded
    , rfsRuntimeMobileEmulation
    , rfsRuntimeSettingsFetchTime
    , rfsWarningAuditsGroupTitle
    , rfsSnippetExpandButtonLabel
    , rfsRuntimeSettingsBenchmark
    , rfsSnippetCollapseButtonLabel
    , rfsDropdownDarkTheme
    , rfsScorescaleLabel
    , rfsShowRelevantAudits
    , rfsDropdownCopyJSON
    , rfsOpportUnitySavingsColumnLabel
    , rfsErrorLabel
    , rfsViewTreemapLabel
    , rfsLsPerformanceCategoryDescription
    , rfsAuditGroupExpandTooltip
    , rfsRuntimeNoEmulation
    , rfsNotApplicableAuditsGroupTitle

    -- * Timing
    , Timing
    , timing
    , tTotal

    -- * UserPageLoadMetricV5
    , UserPageLoadMetricV5
    , userPageLoadMetricV5
    , uplmvMedian
    , uplmvCategory
    , uplmvFormFactor
    , uplmvMetricId
    , uplmvPercentile
    , uplmvDistributions

    -- * I18n
    , I18n
    , i18n
    , iRendererFormattedStrings

    -- * LighthouseResultV5Audits
    , LighthouseResultV5Audits
    , lighthouseResultV5Audits
    , lrvaAddtional
    ) where

import Network.Google.PageSpeed.Types.Product
import Network.Google.PageSpeed.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v5' of the PageSpeed Insights API. This contains the host and root path used as a starting point for constructing service requests.
pageSpeedService :: ServiceConfig
pageSpeedService
  = defaultService (ServiceId "pagespeedonline:v5")
      "pagespeedonline.googleapis.com"

-- | Associate you with your personal info on Google
openidScope :: Proxy '["openid"]
openidScope = Proxy
