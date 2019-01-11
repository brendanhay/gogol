{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types
    (
    -- * Service Configuration
      pageSpeedService

    -- * LighthouseResultV5CategoryGroups
    , LighthouseResultV5CategoryGroups
    , lighthouseResultV5CategoryGroups
    , lrvcgAddtional

    -- * LighthouseResultV5RuntimeError
    , LighthouseResultV5RuntimeError
    , lighthouseResultV5RuntimeError
    , lrvreCode
    , lrvreMessage

    -- * LighthouseAuditResultV5Details
    , LighthouseAuditResultV5Details
    , lighthouseAuditResultV5Details
    , larvdAddtional

    -- * LighthouseResultV5ConfigSettings
    , LighthouseResultV5ConfigSettings
    , lighthouseResultV5ConfigSettings
    , lrvcsLocale
    , lrvcsEmulatedFormFactor
    , lrvcsOnlyCategories

    -- * PagespeedAPIRunPagespeedStrategy
    , PagespeedAPIRunPagespeedStrategy (..)

    -- * LighthouseResultV5Environment
    , LighthouseResultV5Environment
    , lighthouseResultV5Environment
    , lrveHostUserAgent
    , lrveBenchmarkIndex
    , lrveNetworkUserAgent

    -- * LighthouseResultV5CategoryGroupsAdditional
    , LighthouseResultV5CategoryGroupsAdditional
    , lighthouseResultV5CategoryGroupsAdditional
    , lrvcgaTitle
    , lrvcgaDescription

    -- * LighthouseAuditResultV5
    , LighthouseAuditResultV5
    , lighthouseAuditResultV5
    , larvScore
    , larvExplanation
    , larvWarnings
    , larvScoreDisplayMode
    , larvDisplayValue
    , larvDetails
    , larvId
    , larvTitle
    , larvErrorMessage
    , larvDescription

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

    -- * LighthouseResultV5Categories
    , LighthouseResultV5Categories
    , lighthouseResultV5Categories
    , lrvcBestPractices
    , lrvcPerformance
    , lrvcPwa
    , lrvcSeo
    , lrvcAccessibility

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

    -- * PagespeedAPILoadingExperienceV5MetricsAdditional
    , PagespeedAPILoadingExperienceV5MetricsAdditional
    , pagespeedAPILoadingExperienceV5MetricsAdditional
    , palevmaCategory
    , palevmaPercentile
    , palevmaDistributions

    -- * PagespeedAPILoadingExperienceV5
    , PagespeedAPILoadingExperienceV5
    , pagespeedAPILoadingExperienceV5
    , palevMetrics
    , palevInitialURL
    , palevId
    , palevOverallCategory

    -- * PagespeedAPIPagespeedResponseV5Version
    , PagespeedAPIPagespeedResponseV5Version
    , pagespeedAPIPagespeedResponseV5Version
    , paprvvMinor
    , paprvvMajor

    -- * PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem
    , PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem
    , pagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem
    , palevmadiMax
    , palevmadiProportion
    , palevmadiMin

    -- * LighthouseResultV5Timing
    , LighthouseResultV5Timing
    , lighthouseResultV5Timing
    , lrvtTotal

    -- * LighthouseResultV5I18nRendererFormattedStrings
    , LighthouseResultV5I18nRendererFormattedStrings
    , lighthouseResultV5I18nRendererFormattedStrings
    , lrvirfsLabDataTitle
    , lrvirfsWarningHeader
    , lrvirfsOpportUnityResourceColumnLabel
    , lrvirfsManualAuditsGroupTitle
    , lrvirfsCrcInitialNavigation
    , lrvirfsVarianceDisclaimer
    , lrvirfsPassedAuditsGroupTitle
    , lrvirfsToplevelWarningsMessage
    , lrvirfsErrorMissingAuditInfo
    , lrvirfsCrcLongestDurationLabel
    , lrvirfsScorescaleLabel
    , lrvirfsOpportUnitySavingsColumnLabel
    , lrvirfsErrorLabel
    , lrvirfsLsPerformanceCategoryDescription
    , lrvirfsAuditGroupExpandTooltip
    , lrvirfsNotApplicableAuditsGroupTitle

    -- * LighthouseCategoryV5AuditRefsItem
    , LighthouseCategoryV5AuditRefsItem
    , lighthouseCategoryV5AuditRefsItem
    , lcvariGroup
    , lcvariWeight
    , lcvariId

    -- * LighthouseResultV5I18n
    , LighthouseResultV5I18n
    , lighthouseResultV5I18n
    , lrviRendererFormattedStrings

    -- * LighthouseResultV5Audits
    , LighthouseResultV5Audits
    , lighthouseResultV5Audits
    , lrvaAddtional
    ) where

import           Network.Google.PageSpeed.Types.Product
import           Network.Google.PageSpeed.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v5' of the PageSpeed Insights API. This contains the host and root path used as a starting point for constructing service requests.
pageSpeedService :: ServiceConfig
pageSpeedService
  = defaultService (ServiceId "pagespeedonline:v5")
      "www.googleapis.com"
