{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types.Product where

import           Network.Google.PageSpeed.Types.Sum
import           Network.Google.Prelude

-- | Map of category groups in the LHR.
--
-- /See:/ 'lighthouseResultV5CategoryGroups' smart constructor.
newtype LighthouseResultV5CategoryGroups = LighthouseResultV5CategoryGroups'
    { _lrvcgAddtional :: HashMap Text LighthouseResultV5CategoryGroupsAdditional
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5CategoryGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvcgAddtional'
lighthouseResultV5CategoryGroups
    :: HashMap Text LighthouseResultV5CategoryGroupsAdditional -- ^ 'lrvcgAddtional'
    -> LighthouseResultV5CategoryGroups
lighthouseResultV5CategoryGroups pLrvcgAddtional_ =
    LighthouseResultV5CategoryGroups'
    { _lrvcgAddtional = _Coerce # pLrvcgAddtional_
    }

-- | A grouping contained in a category that groups similar audits together.
lrvcgAddtional :: Lens' LighthouseResultV5CategoryGroups (HashMap Text LighthouseResultV5CategoryGroupsAdditional)
lrvcgAddtional
  = lens _lrvcgAddtional
      (\ s a -> s{_lrvcgAddtional = a})
      . _Coerce

instance FromJSON LighthouseResultV5CategoryGroups
         where
        parseJSON
          = withObject "LighthouseResultV5CategoryGroups"
              (\ o ->
                 LighthouseResultV5CategoryGroups' <$>
                   (parseJSONObject o))

instance ToJSON LighthouseResultV5CategoryGroups
         where
        toJSON = toJSON . _lrvcgAddtional

-- | A top-level error message that, if present, indicates a serious enough
-- problem that this Lighthouse result may need to be discarded.
--
-- /See:/ 'lighthouseResultV5RuntimeError' smart constructor.
data LighthouseResultV5RuntimeError = LighthouseResultV5RuntimeError'
    { _lrvreCode    :: !(Maybe Text)
    , _lrvreMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5RuntimeError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvreCode'
--
-- * 'lrvreMessage'
lighthouseResultV5RuntimeError
    :: LighthouseResultV5RuntimeError
lighthouseResultV5RuntimeError =
    LighthouseResultV5RuntimeError'
    { _lrvreCode = Nothing
    , _lrvreMessage = Nothing
    }

-- | The enumerated Lighthouse Error code.
lrvreCode :: Lens' LighthouseResultV5RuntimeError (Maybe Text)
lrvreCode
  = lens _lrvreCode (\ s a -> s{_lrvreCode = a})

-- | A human readable message explaining the error code.
lrvreMessage :: Lens' LighthouseResultV5RuntimeError (Maybe Text)
lrvreMessage
  = lens _lrvreMessage (\ s a -> s{_lrvreMessage = a})

instance FromJSON LighthouseResultV5RuntimeError
         where
        parseJSON
          = withObject "LighthouseResultV5RuntimeError"
              (\ o ->
                 LighthouseResultV5RuntimeError' <$>
                   (o .:? "code") <*> (o .:? "message"))

instance ToJSON LighthouseResultV5RuntimeError where
        toJSON LighthouseResultV5RuntimeError'{..}
          = object
              (catMaybes
                 [("code" .=) <$> _lrvreCode,
                  ("message" .=) <$> _lrvreMessage])

-- | Freeform details section of the audit.
--
-- /See:/ 'lighthouseAuditResultV5Details' smart constructor.
newtype LighthouseAuditResultV5Details = LighthouseAuditResultV5Details'
    { _larvdAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseAuditResultV5Details' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larvdAddtional'
lighthouseAuditResultV5Details
    :: HashMap Text JSONValue -- ^ 'larvdAddtional'
    -> LighthouseAuditResultV5Details
lighthouseAuditResultV5Details pLarvdAddtional_ =
    LighthouseAuditResultV5Details'
    { _larvdAddtional = _Coerce # pLarvdAddtional_
    }

larvdAddtional :: Lens' LighthouseAuditResultV5Details (HashMap Text JSONValue)
larvdAddtional
  = lens _larvdAddtional
      (\ s a -> s{_larvdAddtional = a})
      . _Coerce

instance FromJSON LighthouseAuditResultV5Details
         where
        parseJSON
          = withObject "LighthouseAuditResultV5Details"
              (\ o ->
                 LighthouseAuditResultV5Details' <$>
                   (parseJSONObject o))

instance ToJSON LighthouseAuditResultV5Details where
        toJSON = toJSON . _larvdAddtional

-- | The configuration settings for this LHR.
--
-- /See:/ 'lighthouseResultV5ConfigSettings' smart constructor.
data LighthouseResultV5ConfigSettings = LighthouseResultV5ConfigSettings'
    { _lrvcsLocale             :: !(Maybe Text)
    , _lrvcsEmulatedFormFactor :: !(Maybe Text)
    , _lrvcsOnlyCategories     :: !(Maybe JSONValue)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5ConfigSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvcsLocale'
--
-- * 'lrvcsEmulatedFormFactor'
--
-- * 'lrvcsOnlyCategories'
lighthouseResultV5ConfigSettings
    :: LighthouseResultV5ConfigSettings
lighthouseResultV5ConfigSettings =
    LighthouseResultV5ConfigSettings'
    { _lrvcsLocale = Nothing
    , _lrvcsEmulatedFormFactor = Nothing
    , _lrvcsOnlyCategories = Nothing
    }

-- | The locale setting.
lrvcsLocale :: Lens' LighthouseResultV5ConfigSettings (Maybe Text)
lrvcsLocale
  = lens _lrvcsLocale (\ s a -> s{_lrvcsLocale = a})

-- | The form factor the emulation should use.
lrvcsEmulatedFormFactor :: Lens' LighthouseResultV5ConfigSettings (Maybe Text)
lrvcsEmulatedFormFactor
  = lens _lrvcsEmulatedFormFactor
      (\ s a -> s{_lrvcsEmulatedFormFactor = a})

lrvcsOnlyCategories :: Lens' LighthouseResultV5ConfigSettings (Maybe JSONValue)
lrvcsOnlyCategories
  = lens _lrvcsOnlyCategories
      (\ s a -> s{_lrvcsOnlyCategories = a})

instance FromJSON LighthouseResultV5ConfigSettings
         where
        parseJSON
          = withObject "LighthouseResultV5ConfigSettings"
              (\ o ->
                 LighthouseResultV5ConfigSettings' <$>
                   (o .:? "locale") <*> (o .:? "emulatedFormFactor") <*>
                     (o .:? "onlyCategories"))

instance ToJSON LighthouseResultV5ConfigSettings
         where
        toJSON LighthouseResultV5ConfigSettings'{..}
          = object
              (catMaybes
                 [("locale" .=) <$> _lrvcsLocale,
                  ("emulatedFormFactor" .=) <$>
                    _lrvcsEmulatedFormFactor,
                  ("onlyCategories" .=) <$> _lrvcsOnlyCategories])

-- | Environment settings that were used when making this LHR.
--
-- /See:/ 'lighthouseResultV5Environment' smart constructor.
data LighthouseResultV5Environment = LighthouseResultV5Environment'
    { _lrveHostUserAgent    :: !(Maybe Text)
    , _lrveBenchmarkIndex   :: !(Maybe (Textual Double))
    , _lrveNetworkUserAgent :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrveHostUserAgent'
--
-- * 'lrveBenchmarkIndex'
--
-- * 'lrveNetworkUserAgent'
lighthouseResultV5Environment
    :: LighthouseResultV5Environment
lighthouseResultV5Environment =
    LighthouseResultV5Environment'
    { _lrveHostUserAgent = Nothing
    , _lrveBenchmarkIndex = Nothing
    , _lrveNetworkUserAgent = Nothing
    }

-- | The user agent string of the version of Chrome used.
lrveHostUserAgent :: Lens' LighthouseResultV5Environment (Maybe Text)
lrveHostUserAgent
  = lens _lrveHostUserAgent
      (\ s a -> s{_lrveHostUserAgent = a})

-- | The benchmark index number that indicates rough device class.
lrveBenchmarkIndex :: Lens' LighthouseResultV5Environment (Maybe Double)
lrveBenchmarkIndex
  = lens _lrveBenchmarkIndex
      (\ s a -> s{_lrveBenchmarkIndex = a})
      . mapping _Coerce

-- | The user agent string that was sent over the network.
lrveNetworkUserAgent :: Lens' LighthouseResultV5Environment (Maybe Text)
lrveNetworkUserAgent
  = lens _lrveNetworkUserAgent
      (\ s a -> s{_lrveNetworkUserAgent = a})

instance FromJSON LighthouseResultV5Environment where
        parseJSON
          = withObject "LighthouseResultV5Environment"
              (\ o ->
                 LighthouseResultV5Environment' <$>
                   (o .:? "hostUserAgent") <*> (o .:? "benchmarkIndex")
                     <*> (o .:? "networkUserAgent"))

instance ToJSON LighthouseResultV5Environment where
        toJSON LighthouseResultV5Environment'{..}
          = object
              (catMaybes
                 [("hostUserAgent" .=) <$> _lrveHostUserAgent,
                  ("benchmarkIndex" .=) <$> _lrveBenchmarkIndex,
                  ("networkUserAgent" .=) <$> _lrveNetworkUserAgent])

-- | A grouping contained in a category that groups similar audits together.
--
-- /See:/ 'lighthouseResultV5CategoryGroupsAdditional' smart constructor.
data LighthouseResultV5CategoryGroupsAdditional = LighthouseResultV5CategoryGroupsAdditional'
    { _lrvcgaTitle       :: !(Maybe Text)
    , _lrvcgaDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5CategoryGroupsAdditional' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvcgaTitle'
--
-- * 'lrvcgaDescription'
lighthouseResultV5CategoryGroupsAdditional
    :: LighthouseResultV5CategoryGroupsAdditional
lighthouseResultV5CategoryGroupsAdditional =
    LighthouseResultV5CategoryGroupsAdditional'
    { _lrvcgaTitle = Nothing
    , _lrvcgaDescription = Nothing
    }

-- | The title of the category group.
lrvcgaTitle :: Lens' LighthouseResultV5CategoryGroupsAdditional (Maybe Text)
lrvcgaTitle
  = lens _lrvcgaTitle (\ s a -> s{_lrvcgaTitle = a})

-- | An optional human readable description of the category group.
lrvcgaDescription :: Lens' LighthouseResultV5CategoryGroupsAdditional (Maybe Text)
lrvcgaDescription
  = lens _lrvcgaDescription
      (\ s a -> s{_lrvcgaDescription = a})

instance FromJSON
         LighthouseResultV5CategoryGroupsAdditional where
        parseJSON
          = withObject
              "LighthouseResultV5CategoryGroupsAdditional"
              (\ o ->
                 LighthouseResultV5CategoryGroupsAdditional' <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON
         LighthouseResultV5CategoryGroupsAdditional where
        toJSON
          LighthouseResultV5CategoryGroupsAdditional'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _lrvcgaTitle,
                  ("description" .=) <$> _lrvcgaDescription])

--
-- /See:/ 'lighthouseAuditResultV5' smart constructor.
data LighthouseAuditResultV5 = LighthouseAuditResultV5'
    { _larvScore            :: !(Maybe JSONValue)
    , _larvExplanation      :: !(Maybe Text)
    , _larvWarnings         :: !(Maybe JSONValue)
    , _larvScoreDisplayMode :: !(Maybe Text)
    , _larvDisplayValue     :: !(Maybe Text)
    , _larvDetails          :: !(Maybe LighthouseAuditResultV5Details)
    , _larvId               :: !(Maybe Text)
    , _larvTitle            :: !(Maybe Text)
    , _larvErrorMessage     :: !(Maybe Text)
    , _larvDescription      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseAuditResultV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larvScore'
--
-- * 'larvExplanation'
--
-- * 'larvWarnings'
--
-- * 'larvScoreDisplayMode'
--
-- * 'larvDisplayValue'
--
-- * 'larvDetails'
--
-- * 'larvId'
--
-- * 'larvTitle'
--
-- * 'larvErrorMessage'
--
-- * 'larvDescription'
lighthouseAuditResultV5
    :: LighthouseAuditResultV5
lighthouseAuditResultV5 =
    LighthouseAuditResultV5'
    { _larvScore = Nothing
    , _larvExplanation = Nothing
    , _larvWarnings = Nothing
    , _larvScoreDisplayMode = Nothing
    , _larvDisplayValue = Nothing
    , _larvDetails = Nothing
    , _larvId = Nothing
    , _larvTitle = Nothing
    , _larvErrorMessage = Nothing
    , _larvDescription = Nothing
    }

larvScore :: Lens' LighthouseAuditResultV5 (Maybe JSONValue)
larvScore
  = lens _larvScore (\ s a -> s{_larvScore = a})

-- | An explanation of the errors in the audit.
larvExplanation :: Lens' LighthouseAuditResultV5 (Maybe Text)
larvExplanation
  = lens _larvExplanation
      (\ s a -> s{_larvExplanation = a})

larvWarnings :: Lens' LighthouseAuditResultV5 (Maybe JSONValue)
larvWarnings
  = lens _larvWarnings (\ s a -> s{_larvWarnings = a})

-- | The enumerated score display mode.
larvScoreDisplayMode :: Lens' LighthouseAuditResultV5 (Maybe Text)
larvScoreDisplayMode
  = lens _larvScoreDisplayMode
      (\ s a -> s{_larvScoreDisplayMode = a})

-- | The value that should be displayed on the UI for this audit.
larvDisplayValue :: Lens' LighthouseAuditResultV5 (Maybe Text)
larvDisplayValue
  = lens _larvDisplayValue
      (\ s a -> s{_larvDisplayValue = a})

-- | Freeform details section of the audit.
larvDetails :: Lens' LighthouseAuditResultV5 (Maybe LighthouseAuditResultV5Details)
larvDetails
  = lens _larvDetails (\ s a -> s{_larvDetails = a})

-- | The audit\'s id.
larvId :: Lens' LighthouseAuditResultV5 (Maybe Text)
larvId = lens _larvId (\ s a -> s{_larvId = a})

-- | The human readable title.
larvTitle :: Lens' LighthouseAuditResultV5 (Maybe Text)
larvTitle
  = lens _larvTitle (\ s a -> s{_larvTitle = a})

-- | An error message from a thrown error inside the audit.
larvErrorMessage :: Lens' LighthouseAuditResultV5 (Maybe Text)
larvErrorMessage
  = lens _larvErrorMessage
      (\ s a -> s{_larvErrorMessage = a})

-- | The description of the audit.
larvDescription :: Lens' LighthouseAuditResultV5 (Maybe Text)
larvDescription
  = lens _larvDescription
      (\ s a -> s{_larvDescription = a})

instance FromJSON LighthouseAuditResultV5 where
        parseJSON
          = withObject "LighthouseAuditResultV5"
              (\ o ->
                 LighthouseAuditResultV5' <$>
                   (o .:? "score") <*> (o .:? "explanation") <*>
                     (o .:? "warnings")
                     <*> (o .:? "scoreDisplayMode")
                     <*> (o .:? "displayValue")
                     <*> (o .:? "details")
                     <*> (o .:? "id")
                     <*> (o .:? "title")
                     <*> (o .:? "errorMessage")
                     <*> (o .:? "description"))

instance ToJSON LighthouseAuditResultV5 where
        toJSON LighthouseAuditResultV5'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _larvScore,
                  ("explanation" .=) <$> _larvExplanation,
                  ("warnings" .=) <$> _larvWarnings,
                  ("scoreDisplayMode" .=) <$> _larvScoreDisplayMode,
                  ("displayValue" .=) <$> _larvDisplayValue,
                  ("details" .=) <$> _larvDetails,
                  ("id" .=) <$> _larvId, ("title" .=) <$> _larvTitle,
                  ("errorMessage" .=) <$> _larvErrorMessage,
                  ("description" .=) <$> _larvDescription])

--
-- /See:/ 'pagespeedAPIPagespeedResponseV5' smart constructor.
data PagespeedAPIPagespeedResponseV5 = PagespeedAPIPagespeedResponseV5'
    { _paprvKind                    :: !Text
    , _paprvOriginLoadingExperience :: !(Maybe PagespeedAPILoadingExperienceV5)
    , _paprvVersion                 :: !(Maybe PagespeedAPIPagespeedResponseV5Version)
    , _paprvCaptchaResult           :: !(Maybe Text)
    , _paprvId                      :: !(Maybe Text)
    , _paprvLoadingExperience       :: !(Maybe PagespeedAPILoadingExperienceV5)
    , _paprvLighthouseResult        :: !(Maybe LighthouseResultV5)
    , _paprvAnalysisUTCTimestamp    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIPagespeedResponseV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paprvKind'
--
-- * 'paprvOriginLoadingExperience'
--
-- * 'paprvVersion'
--
-- * 'paprvCaptchaResult'
--
-- * 'paprvId'
--
-- * 'paprvLoadingExperience'
--
-- * 'paprvLighthouseResult'
--
-- * 'paprvAnalysisUTCTimestamp'
pagespeedAPIPagespeedResponseV5
    :: PagespeedAPIPagespeedResponseV5
pagespeedAPIPagespeedResponseV5 =
    PagespeedAPIPagespeedResponseV5'
    { _paprvKind = "pagespeedonline#result"
    , _paprvOriginLoadingExperience = Nothing
    , _paprvVersion = Nothing
    , _paprvCaptchaResult = Nothing
    , _paprvId = Nothing
    , _paprvLoadingExperience = Nothing
    , _paprvLighthouseResult = Nothing
    , _paprvAnalysisUTCTimestamp = Nothing
    }

-- | Kind of result.
paprvKind :: Lens' PagespeedAPIPagespeedResponseV5 Text
paprvKind
  = lens _paprvKind (\ s a -> s{_paprvKind = a})

-- | Metrics of the aggregated page loading experience of the origin
paprvOriginLoadingExperience :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe PagespeedAPILoadingExperienceV5)
paprvOriginLoadingExperience
  = lens _paprvOriginLoadingExperience
      (\ s a -> s{_paprvOriginLoadingExperience = a})

-- | The version of PageSpeed used to generate these results.
paprvVersion :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe PagespeedAPIPagespeedResponseV5Version)
paprvVersion
  = lens _paprvVersion (\ s a -> s{_paprvVersion = a})

-- | The captcha verify result
paprvCaptchaResult :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe Text)
paprvCaptchaResult
  = lens _paprvCaptchaResult
      (\ s a -> s{_paprvCaptchaResult = a})

-- | Canonicalized and final URL for the document, after following page
-- redirects (if any).
paprvId :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe Text)
paprvId = lens _paprvId (\ s a -> s{_paprvId = a})

-- | Metrics of end users\' page loading experience.
paprvLoadingExperience :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe PagespeedAPILoadingExperienceV5)
paprvLoadingExperience
  = lens _paprvLoadingExperience
      (\ s a -> s{_paprvLoadingExperience = a})

-- | Lighthouse response for the audit url as an object.
paprvLighthouseResult :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe LighthouseResultV5)
paprvLighthouseResult
  = lens _paprvLighthouseResult
      (\ s a -> s{_paprvLighthouseResult = a})

-- | The UTC timestamp of this analysis.
paprvAnalysisUTCTimestamp :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe Text)
paprvAnalysisUTCTimestamp
  = lens _paprvAnalysisUTCTimestamp
      (\ s a -> s{_paprvAnalysisUTCTimestamp = a})

instance FromJSON PagespeedAPIPagespeedResponseV5
         where
        parseJSON
          = withObject "PagespeedAPIPagespeedResponseV5"
              (\ o ->
                 PagespeedAPIPagespeedResponseV5' <$>
                   (o .:? "kind" .!= "pagespeedonline#result") <*>
                     (o .:? "originLoadingExperience")
                     <*> (o .:? "version")
                     <*> (o .:? "captchaResult")
                     <*> (o .:? "id")
                     <*> (o .:? "loadingExperience")
                     <*> (o .:? "lighthouseResult")
                     <*> (o .:? "analysisUTCTimestamp"))

instance ToJSON PagespeedAPIPagespeedResponseV5 where
        toJSON PagespeedAPIPagespeedResponseV5'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _paprvKind),
                  ("originLoadingExperience" .=) <$>
                    _paprvOriginLoadingExperience,
                  ("version" .=) <$> _paprvVersion,
                  ("captchaResult" .=) <$> _paprvCaptchaResult,
                  ("id" .=) <$> _paprvId,
                  ("loadingExperience" .=) <$> _paprvLoadingExperience,
                  ("lighthouseResult" .=) <$> _paprvLighthouseResult,
                  ("analysisUTCTimestamp" .=) <$>
                    _paprvAnalysisUTCTimestamp])

--
-- /See:/ 'pagespeedAPILoadingExperienceV5Metrics' smart constructor.
newtype PagespeedAPILoadingExperienceV5Metrics = PagespeedAPILoadingExperienceV5Metrics'
    { _palevmAddtional :: HashMap Text PagespeedAPILoadingExperienceV5MetricsAdditional
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPILoadingExperienceV5Metrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palevmAddtional'
pagespeedAPILoadingExperienceV5Metrics
    :: HashMap Text PagespeedAPILoadingExperienceV5MetricsAdditional -- ^ 'palevmAddtional'
    -> PagespeedAPILoadingExperienceV5Metrics
pagespeedAPILoadingExperienceV5Metrics pPalevmAddtional_ =
    PagespeedAPILoadingExperienceV5Metrics'
    { _palevmAddtional = _Coerce # pPalevmAddtional_
    }

-- | The type of the metric.
palevmAddtional :: Lens' PagespeedAPILoadingExperienceV5Metrics (HashMap Text PagespeedAPILoadingExperienceV5MetricsAdditional)
palevmAddtional
  = lens _palevmAddtional
      (\ s a -> s{_palevmAddtional = a})
      . _Coerce

instance FromJSON
         PagespeedAPILoadingExperienceV5Metrics where
        parseJSON
          = withObject "PagespeedAPILoadingExperienceV5Metrics"
              (\ o ->
                 PagespeedAPILoadingExperienceV5Metrics' <$>
                   (parseJSONObject o))

instance ToJSON
         PagespeedAPILoadingExperienceV5Metrics where
        toJSON = toJSON . _palevmAddtional

--
-- /See:/ 'lighthouseResultV5' smart constructor.
data LighthouseResultV5 = LighthouseResultV5'
    { _lrvRuntimeError      :: !(Maybe LighthouseResultV5RuntimeError)
    , _lrvCategoryGroups    :: !(Maybe LighthouseResultV5CategoryGroups)
    , _lrvFinalURL          :: !(Maybe Text)
    , _lrvConfigSettings    :: !(Maybe LighthouseResultV5ConfigSettings)
    , _lrvEnvironment       :: !(Maybe LighthouseResultV5Environment)
    , _lrvLighthouseVersion :: !(Maybe Text)
    , _lrvRunWarnings       :: !(Maybe [JSONValue])
    , _lrvRequestedURL      :: !(Maybe Text)
    , _lrvCategories        :: !(Maybe LighthouseResultV5Categories)
    , _lrvFetchTime         :: !(Maybe Text)
    , _lrvUserAgent         :: !(Maybe Text)
    , _lrvTiming            :: !(Maybe LighthouseResultV5Timing)
    , _lrvAudits            :: !(Maybe LighthouseResultV5Audits)
    , _lrvI18n              :: !(Maybe LighthouseResultV5I18n)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvRuntimeError'
--
-- * 'lrvCategoryGroups'
--
-- * 'lrvFinalURL'
--
-- * 'lrvConfigSettings'
--
-- * 'lrvEnvironment'
--
-- * 'lrvLighthouseVersion'
--
-- * 'lrvRunWarnings'
--
-- * 'lrvRequestedURL'
--
-- * 'lrvCategories'
--
-- * 'lrvFetchTime'
--
-- * 'lrvUserAgent'
--
-- * 'lrvTiming'
--
-- * 'lrvAudits'
--
-- * 'lrvI18n'
lighthouseResultV5
    :: LighthouseResultV5
lighthouseResultV5 =
    LighthouseResultV5'
    { _lrvRuntimeError = Nothing
    , _lrvCategoryGroups = Nothing
    , _lrvFinalURL = Nothing
    , _lrvConfigSettings = Nothing
    , _lrvEnvironment = Nothing
    , _lrvLighthouseVersion = Nothing
    , _lrvRunWarnings = Nothing
    , _lrvRequestedURL = Nothing
    , _lrvCategories = Nothing
    , _lrvFetchTime = Nothing
    , _lrvUserAgent = Nothing
    , _lrvTiming = Nothing
    , _lrvAudits = Nothing
    , _lrvI18n = Nothing
    }

-- | A top-level error message that, if present, indicates a serious enough
-- problem that this Lighthouse result may need to be discarded.
lrvRuntimeError :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5RuntimeError)
lrvRuntimeError
  = lens _lrvRuntimeError
      (\ s a -> s{_lrvRuntimeError = a})

-- | Map of category groups in the LHR.
lrvCategoryGroups :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5CategoryGroups)
lrvCategoryGroups
  = lens _lrvCategoryGroups
      (\ s a -> s{_lrvCategoryGroups = a})

-- | The final resolved url that was audited.
lrvFinalURL :: Lens' LighthouseResultV5 (Maybe Text)
lrvFinalURL
  = lens _lrvFinalURL (\ s a -> s{_lrvFinalURL = a})

-- | The configuration settings for this LHR.
lrvConfigSettings :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5ConfigSettings)
lrvConfigSettings
  = lens _lrvConfigSettings
      (\ s a -> s{_lrvConfigSettings = a})

-- | Environment settings that were used when making this LHR.
lrvEnvironment :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5Environment)
lrvEnvironment
  = lens _lrvEnvironment
      (\ s a -> s{_lrvEnvironment = a})

-- | The lighthouse version that was used to generate this LHR.
lrvLighthouseVersion :: Lens' LighthouseResultV5 (Maybe Text)
lrvLighthouseVersion
  = lens _lrvLighthouseVersion
      (\ s a -> s{_lrvLighthouseVersion = a})

-- | List of all run warnings in the LHR. Will always output to at least
-- \`[]\`.
lrvRunWarnings :: Lens' LighthouseResultV5 [JSONValue]
lrvRunWarnings
  = lens _lrvRunWarnings
      (\ s a -> s{_lrvRunWarnings = a})
      . _Default
      . _Coerce

-- | The original requested url.
lrvRequestedURL :: Lens' LighthouseResultV5 (Maybe Text)
lrvRequestedURL
  = lens _lrvRequestedURL
      (\ s a -> s{_lrvRequestedURL = a})

-- | Map of categories in the LHR.
lrvCategories :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5Categories)
lrvCategories
  = lens _lrvCategories
      (\ s a -> s{_lrvCategories = a})

-- | The time that this run was fetched.
lrvFetchTime :: Lens' LighthouseResultV5 (Maybe Text)
lrvFetchTime
  = lens _lrvFetchTime (\ s a -> s{_lrvFetchTime = a})

-- | The user agent that was used to run this LHR.
lrvUserAgent :: Lens' LighthouseResultV5 (Maybe Text)
lrvUserAgent
  = lens _lrvUserAgent (\ s a -> s{_lrvUserAgent = a})

-- | Timing information for this LHR.
lrvTiming :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5Timing)
lrvTiming
  = lens _lrvTiming (\ s a -> s{_lrvTiming = a})

-- | Map of audits in the LHR.
lrvAudits :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5Audits)
lrvAudits
  = lens _lrvAudits (\ s a -> s{_lrvAudits = a})

-- | The internationalization strings that are required to render the LHR.
lrvI18n :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5I18n)
lrvI18n = lens _lrvI18n (\ s a -> s{_lrvI18n = a})

instance FromJSON LighthouseResultV5 where
        parseJSON
          = withObject "LighthouseResultV5"
              (\ o ->
                 LighthouseResultV5' <$>
                   (o .:? "runtimeError") <*> (o .:? "categoryGroups")
                     <*> (o .:? "finalUrl")
                     <*> (o .:? "configSettings")
                     <*> (o .:? "environment")
                     <*> (o .:? "lighthouseVersion")
                     <*> (o .:? "runWarnings" .!= mempty)
                     <*> (o .:? "requestedUrl")
                     <*> (o .:? "categories")
                     <*> (o .:? "fetchTime")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "timing")
                     <*> (o .:? "audits")
                     <*> (o .:? "i18n"))

instance ToJSON LighthouseResultV5 where
        toJSON LighthouseResultV5'{..}
          = object
              (catMaybes
                 [("runtimeError" .=) <$> _lrvRuntimeError,
                  ("categoryGroups" .=) <$> _lrvCategoryGroups,
                  ("finalUrl" .=) <$> _lrvFinalURL,
                  ("configSettings" .=) <$> _lrvConfigSettings,
                  ("environment" .=) <$> _lrvEnvironment,
                  ("lighthouseVersion" .=) <$> _lrvLighthouseVersion,
                  ("runWarnings" .=) <$> _lrvRunWarnings,
                  ("requestedUrl" .=) <$> _lrvRequestedURL,
                  ("categories" .=) <$> _lrvCategories,
                  ("fetchTime" .=) <$> _lrvFetchTime,
                  ("userAgent" .=) <$> _lrvUserAgent,
                  ("timing" .=) <$> _lrvTiming,
                  ("audits" .=) <$> _lrvAudits,
                  ("i18n" .=) <$> _lrvI18n])

-- | Map of categories in the LHR.
--
-- /See:/ 'lighthouseResultV5Categories' smart constructor.
data LighthouseResultV5Categories = LighthouseResultV5Categories'
    { _lrvcBestPractices :: !(Maybe LighthouseCategoryV5)
    , _lrvcPerformance   :: !(Maybe LighthouseCategoryV5)
    , _lrvcPwa           :: !(Maybe LighthouseCategoryV5)
    , _lrvcSeo           :: !(Maybe LighthouseCategoryV5)
    , _lrvcAccessibility :: !(Maybe LighthouseCategoryV5)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5Categories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvcBestPractices'
--
-- * 'lrvcPerformance'
--
-- * 'lrvcPwa'
--
-- * 'lrvcSeo'
--
-- * 'lrvcAccessibility'
lighthouseResultV5Categories
    :: LighthouseResultV5Categories
lighthouseResultV5Categories =
    LighthouseResultV5Categories'
    { _lrvcBestPractices = Nothing
    , _lrvcPerformance = Nothing
    , _lrvcPwa = Nothing
    , _lrvcSeo = Nothing
    , _lrvcAccessibility = Nothing
    }

-- | The best practices category, containing all web best practice related
-- audits.
lrvcBestPractices :: Lens' LighthouseResultV5Categories (Maybe LighthouseCategoryV5)
lrvcBestPractices
  = lens _lrvcBestPractices
      (\ s a -> s{_lrvcBestPractices = a})

-- | The performance category, containing all performance related audits.
lrvcPerformance :: Lens' LighthouseResultV5Categories (Maybe LighthouseCategoryV5)
lrvcPerformance
  = lens _lrvcPerformance
      (\ s a -> s{_lrvcPerformance = a})

-- | The Progressive-Web-App (PWA) category, containing all pwa related
-- audits.
lrvcPwa :: Lens' LighthouseResultV5Categories (Maybe LighthouseCategoryV5)
lrvcPwa = lens _lrvcPwa (\ s a -> s{_lrvcPwa = a})

-- | The Search-Engine-Optimization (SEO) category, containing all seo
-- related audits.
lrvcSeo :: Lens' LighthouseResultV5Categories (Maybe LighthouseCategoryV5)
lrvcSeo = lens _lrvcSeo (\ s a -> s{_lrvcSeo = a})

-- | The accessibility category, containing all accessibility related audits.
lrvcAccessibility :: Lens' LighthouseResultV5Categories (Maybe LighthouseCategoryV5)
lrvcAccessibility
  = lens _lrvcAccessibility
      (\ s a -> s{_lrvcAccessibility = a})

instance FromJSON LighthouseResultV5Categories where
        parseJSON
          = withObject "LighthouseResultV5Categories"
              (\ o ->
                 LighthouseResultV5Categories' <$>
                   (o .:? "best-practices") <*> (o .:? "performance")
                     <*> (o .:? "pwa")
                     <*> (o .:? "seo")
                     <*> (o .:? "accessibility"))

instance ToJSON LighthouseResultV5Categories where
        toJSON LighthouseResultV5Categories'{..}
          = object
              (catMaybes
                 [("best-practices" .=) <$> _lrvcBestPractices,
                  ("performance" .=) <$> _lrvcPerformance,
                  ("pwa" .=) <$> _lrvcPwa, ("seo" .=) <$> _lrvcSeo,
                  ("accessibility" .=) <$> _lrvcAccessibility])

--
-- /See:/ 'lighthouseCategoryV5' smart constructor.
data LighthouseCategoryV5 = LighthouseCategoryV5'
    { _lcvManualDescription :: !(Maybe Text)
    , _lcvScore             :: !(Maybe JSONValue)
    , _lcvAuditRefs         :: !(Maybe [LighthouseCategoryV5AuditRefsItem])
    , _lcvId                :: !(Maybe Text)
    , _lcvTitle             :: !(Maybe Text)
    , _lcvDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseCategoryV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcvManualDescription'
--
-- * 'lcvScore'
--
-- * 'lcvAuditRefs'
--
-- * 'lcvId'
--
-- * 'lcvTitle'
--
-- * 'lcvDescription'
lighthouseCategoryV5
    :: LighthouseCategoryV5
lighthouseCategoryV5 =
    LighthouseCategoryV5'
    { _lcvManualDescription = Nothing
    , _lcvScore = Nothing
    , _lcvAuditRefs = Nothing
    , _lcvId = Nothing
    , _lcvTitle = Nothing
    , _lcvDescription = Nothing
    }

-- | A description for the manual audits in the category.
lcvManualDescription :: Lens' LighthouseCategoryV5 (Maybe Text)
lcvManualDescription
  = lens _lcvManualDescription
      (\ s a -> s{_lcvManualDescription = a})

lcvScore :: Lens' LighthouseCategoryV5 (Maybe JSONValue)
lcvScore = lens _lcvScore (\ s a -> s{_lcvScore = a})

-- | An array of references to all the audit members of this category.
lcvAuditRefs :: Lens' LighthouseCategoryV5 [LighthouseCategoryV5AuditRefsItem]
lcvAuditRefs
  = lens _lcvAuditRefs (\ s a -> s{_lcvAuditRefs = a})
      . _Default
      . _Coerce

-- | The string identifier of the category.
lcvId :: Lens' LighthouseCategoryV5 (Maybe Text)
lcvId = lens _lcvId (\ s a -> s{_lcvId = a})

-- | The human-friendly name of the category.
lcvTitle :: Lens' LighthouseCategoryV5 (Maybe Text)
lcvTitle = lens _lcvTitle (\ s a -> s{_lcvTitle = a})

-- | A more detailed description of the category and its importance.
lcvDescription :: Lens' LighthouseCategoryV5 (Maybe Text)
lcvDescription
  = lens _lcvDescription
      (\ s a -> s{_lcvDescription = a})

instance FromJSON LighthouseCategoryV5 where
        parseJSON
          = withObject "LighthouseCategoryV5"
              (\ o ->
                 LighthouseCategoryV5' <$>
                   (o .:? "manualDescription") <*> (o .:? "score") <*>
                     (o .:? "auditRefs" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON LighthouseCategoryV5 where
        toJSON LighthouseCategoryV5'{..}
          = object
              (catMaybes
                 [("manualDescription" .=) <$> _lcvManualDescription,
                  ("score" .=) <$> _lcvScore,
                  ("auditRefs" .=) <$> _lcvAuditRefs,
                  ("id" .=) <$> _lcvId, ("title" .=) <$> _lcvTitle,
                  ("description" .=) <$> _lcvDescription])

-- | The type of the metric.
--
-- /See:/ 'pagespeedAPILoadingExperienceV5MetricsAdditional' smart constructor.
data PagespeedAPILoadingExperienceV5MetricsAdditional = PagespeedAPILoadingExperienceV5MetricsAdditional'
    { _palevmaCategory      :: !(Maybe Text)
    , _palevmaPercentile    :: !(Maybe (Textual Int32))
    , _palevmaDistributions :: !(Maybe [PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPILoadingExperienceV5MetricsAdditional' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palevmaCategory'
--
-- * 'palevmaPercentile'
--
-- * 'palevmaDistributions'
pagespeedAPILoadingExperienceV5MetricsAdditional
    :: PagespeedAPILoadingExperienceV5MetricsAdditional
pagespeedAPILoadingExperienceV5MetricsAdditional =
    PagespeedAPILoadingExperienceV5MetricsAdditional'
    { _palevmaCategory = Nothing
    , _palevmaPercentile = Nothing
    , _palevmaDistributions = Nothing
    }

palevmaCategory :: Lens' PagespeedAPILoadingExperienceV5MetricsAdditional (Maybe Text)
palevmaCategory
  = lens _palevmaCategory
      (\ s a -> s{_palevmaCategory = a})

palevmaPercentile :: Lens' PagespeedAPILoadingExperienceV5MetricsAdditional (Maybe Int32)
palevmaPercentile
  = lens _palevmaPercentile
      (\ s a -> s{_palevmaPercentile = a})
      . mapping _Coerce

palevmaDistributions :: Lens' PagespeedAPILoadingExperienceV5MetricsAdditional [PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem]
palevmaDistributions
  = lens _palevmaDistributions
      (\ s a -> s{_palevmaDistributions = a})
      . _Default
      . _Coerce

instance FromJSON
         PagespeedAPILoadingExperienceV5MetricsAdditional
         where
        parseJSON
          = withObject
              "PagespeedAPILoadingExperienceV5MetricsAdditional"
              (\ o ->
                 PagespeedAPILoadingExperienceV5MetricsAdditional' <$>
                   (o .:? "category") <*> (o .:? "percentile") <*>
                     (o .:? "distributions" .!= mempty))

instance ToJSON
         PagespeedAPILoadingExperienceV5MetricsAdditional
         where
        toJSON
          PagespeedAPILoadingExperienceV5MetricsAdditional'{..}
          = object
              (catMaybes
                 [("category" .=) <$> _palevmaCategory,
                  ("percentile" .=) <$> _palevmaPercentile,
                  ("distributions" .=) <$> _palevmaDistributions])

--
-- /See:/ 'pagespeedAPILoadingExperienceV5' smart constructor.
data PagespeedAPILoadingExperienceV5 = PagespeedAPILoadingExperienceV5'
    { _palevMetrics         :: !(Maybe PagespeedAPILoadingExperienceV5Metrics)
    , _palevInitialURL      :: !(Maybe Text)
    , _palevId              :: !(Maybe Text)
    , _palevOverallCategory :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPILoadingExperienceV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palevMetrics'
--
-- * 'palevInitialURL'
--
-- * 'palevId'
--
-- * 'palevOverallCategory'
pagespeedAPILoadingExperienceV5
    :: PagespeedAPILoadingExperienceV5
pagespeedAPILoadingExperienceV5 =
    PagespeedAPILoadingExperienceV5'
    { _palevMetrics = Nothing
    , _palevInitialURL = Nothing
    , _palevId = Nothing
    , _palevOverallCategory = Nothing
    }

palevMetrics :: Lens' PagespeedAPILoadingExperienceV5 (Maybe PagespeedAPILoadingExperienceV5Metrics)
palevMetrics
  = lens _palevMetrics (\ s a -> s{_palevMetrics = a})

palevInitialURL :: Lens' PagespeedAPILoadingExperienceV5 (Maybe Text)
palevInitialURL
  = lens _palevInitialURL
      (\ s a -> s{_palevInitialURL = a})

-- | The url, pattern or origin which the metrics are on.
palevId :: Lens' PagespeedAPILoadingExperienceV5 (Maybe Text)
palevId = lens _palevId (\ s a -> s{_palevId = a})

palevOverallCategory :: Lens' PagespeedAPILoadingExperienceV5 (Maybe Text)
palevOverallCategory
  = lens _palevOverallCategory
      (\ s a -> s{_palevOverallCategory = a})

instance FromJSON PagespeedAPILoadingExperienceV5
         where
        parseJSON
          = withObject "PagespeedAPILoadingExperienceV5"
              (\ o ->
                 PagespeedAPILoadingExperienceV5' <$>
                   (o .:? "metrics") <*> (o .:? "initial_url") <*>
                     (o .:? "id")
                     <*> (o .:? "overall_category"))

instance ToJSON PagespeedAPILoadingExperienceV5 where
        toJSON PagespeedAPILoadingExperienceV5'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _palevMetrics,
                  ("initial_url" .=) <$> _palevInitialURL,
                  ("id" .=) <$> _palevId,
                  ("overall_category" .=) <$> _palevOverallCategory])

-- | The version of PageSpeed used to generate these results.
--
-- /See:/ 'pagespeedAPIPagespeedResponseV5Version' smart constructor.
data PagespeedAPIPagespeedResponseV5Version = PagespeedAPIPagespeedResponseV5Version'
    { _paprvvMinor :: !(Maybe (Textual Int32))
    , _paprvvMajor :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIPagespeedResponseV5Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paprvvMinor'
--
-- * 'paprvvMajor'
pagespeedAPIPagespeedResponseV5Version
    :: PagespeedAPIPagespeedResponseV5Version
pagespeedAPIPagespeedResponseV5Version =
    PagespeedAPIPagespeedResponseV5Version'
    { _paprvvMinor = Nothing
    , _paprvvMajor = Nothing
    }

-- | The minor version number of PageSpeed used to generate these results.
paprvvMinor :: Lens' PagespeedAPIPagespeedResponseV5Version (Maybe Int32)
paprvvMinor
  = lens _paprvvMinor (\ s a -> s{_paprvvMinor = a}) .
      mapping _Coerce

-- | The major version number of PageSpeed used to generate these results.
paprvvMajor :: Lens' PagespeedAPIPagespeedResponseV5Version (Maybe Int32)
paprvvMajor
  = lens _paprvvMajor (\ s a -> s{_paprvvMajor = a}) .
      mapping _Coerce

instance FromJSON
         PagespeedAPIPagespeedResponseV5Version where
        parseJSON
          = withObject "PagespeedAPIPagespeedResponseV5Version"
              (\ o ->
                 PagespeedAPIPagespeedResponseV5Version' <$>
                   (o .:? "minor") <*> (o .:? "major"))

instance ToJSON
         PagespeedAPIPagespeedResponseV5Version where
        toJSON PagespeedAPIPagespeedResponseV5Version'{..}
          = object
              (catMaybes
                 [("minor" .=) <$> _paprvvMinor,
                  ("major" .=) <$> _paprvvMajor])

--
-- /See:/ 'pagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem' smart constructor.
data PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem = PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem'
    { _palevmadiMax        :: !(Maybe (Textual Int32))
    , _palevmadiProportion :: !(Maybe (Textual Double))
    , _palevmadiMin        :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palevmadiMax'
--
-- * 'palevmadiProportion'
--
-- * 'palevmadiMin'
pagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem
    :: PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem
pagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem =
    PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem'
    { _palevmadiMax = Nothing
    , _palevmadiProportion = Nothing
    , _palevmadiMin = Nothing
    }

palevmadiMax :: Lens' PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem (Maybe Int32)
palevmadiMax
  = lens _palevmadiMax (\ s a -> s{_palevmadiMax = a})
      . mapping _Coerce

palevmadiProportion :: Lens' PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem (Maybe Double)
palevmadiProportion
  = lens _palevmadiProportion
      (\ s a -> s{_palevmadiProportion = a})
      . mapping _Coerce

palevmadiMin :: Lens' PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem (Maybe Int32)
palevmadiMin
  = lens _palevmadiMin (\ s a -> s{_palevmadiMin = a})
      . mapping _Coerce

instance FromJSON
         PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem
         where
        parseJSON
          = withObject
              "PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem"
              (\ o ->
                 PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem'
                   <$>
                   (o .:? "max") <*> (o .:? "proportion") <*>
                     (o .:? "min"))

instance ToJSON
         PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem
         where
        toJSON
          PagespeedAPILoadingExperienceV5MetricsAdditionalDistributionsItem'{..}
          = object
              (catMaybes
                 [("max" .=) <$> _palevmadiMax,
                  ("proportion" .=) <$> _palevmadiProportion,
                  ("min" .=) <$> _palevmadiMin])

-- | Timing information for this LHR.
--
-- /See:/ 'lighthouseResultV5Timing' smart constructor.
newtype LighthouseResultV5Timing = LighthouseResultV5Timing'
    { _lrvtTotal :: Maybe (Textual Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5Timing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvtTotal'
lighthouseResultV5Timing
    :: LighthouseResultV5Timing
lighthouseResultV5Timing =
    LighthouseResultV5Timing'
    { _lrvtTotal = Nothing
    }

-- | The total duration of Lighthouse\'s run.
lrvtTotal :: Lens' LighthouseResultV5Timing (Maybe Double)
lrvtTotal
  = lens _lrvtTotal (\ s a -> s{_lrvtTotal = a}) .
      mapping _Coerce

instance FromJSON LighthouseResultV5Timing where
        parseJSON
          = withObject "LighthouseResultV5Timing"
              (\ o ->
                 LighthouseResultV5Timing' <$> (o .:? "total"))

instance ToJSON LighthouseResultV5Timing where
        toJSON LighthouseResultV5Timing'{..}
          = object (catMaybes [("total" .=) <$> _lrvtTotal])

-- | Internationalized strings that are formatted to the locale in
-- configSettings.
--
-- /See:/ 'lighthouseResultV5I18nRendererFormattedStrings' smart constructor.
data LighthouseResultV5I18nRendererFormattedStrings = LighthouseResultV5I18nRendererFormattedStrings'
    { _lrvirfsLabDataTitle                     :: !(Maybe Text)
    , _lrvirfsWarningHeader                    :: !(Maybe Text)
    , _lrvirfsOpportUnityResourceColumnLabel   :: !(Maybe Text)
    , _lrvirfsManualAuditsGroupTitle           :: !(Maybe Text)
    , _lrvirfsCrcInitialNavigation             :: !(Maybe Text)
    , _lrvirfsVarianceDisclaimer               :: !(Maybe Text)
    , _lrvirfsPassedAuditsGroupTitle           :: !(Maybe Text)
    , _lrvirfsToplevelWarningsMessage          :: !(Maybe Text)
    , _lrvirfsErrorMissingAuditInfo            :: !(Maybe Text)
    , _lrvirfsCrcLongestDurationLabel          :: !(Maybe Text)
    , _lrvirfsScorescaleLabel                  :: !(Maybe Text)
    , _lrvirfsOpportUnitySavingsColumnLabel    :: !(Maybe Text)
    , _lrvirfsErrorLabel                       :: !(Maybe Text)
    , _lrvirfsLsPerformanceCategoryDescription :: !(Maybe Text)
    , _lrvirfsAuditGroupExpandTooltip          :: !(Maybe Text)
    , _lrvirfsNotApplicableAuditsGroupTitle    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5I18nRendererFormattedStrings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvirfsLabDataTitle'
--
-- * 'lrvirfsWarningHeader'
--
-- * 'lrvirfsOpportUnityResourceColumnLabel'
--
-- * 'lrvirfsManualAuditsGroupTitle'
--
-- * 'lrvirfsCrcInitialNavigation'
--
-- * 'lrvirfsVarianceDisclaimer'
--
-- * 'lrvirfsPassedAuditsGroupTitle'
--
-- * 'lrvirfsToplevelWarningsMessage'
--
-- * 'lrvirfsErrorMissingAuditInfo'
--
-- * 'lrvirfsCrcLongestDurationLabel'
--
-- * 'lrvirfsScorescaleLabel'
--
-- * 'lrvirfsOpportUnitySavingsColumnLabel'
--
-- * 'lrvirfsErrorLabel'
--
-- * 'lrvirfsLsPerformanceCategoryDescription'
--
-- * 'lrvirfsAuditGroupExpandTooltip'
--
-- * 'lrvirfsNotApplicableAuditsGroupTitle'
lighthouseResultV5I18nRendererFormattedStrings
    :: LighthouseResultV5I18nRendererFormattedStrings
lighthouseResultV5I18nRendererFormattedStrings =
    LighthouseResultV5I18nRendererFormattedStrings'
    { _lrvirfsLabDataTitle = Nothing
    , _lrvirfsWarningHeader = Nothing
    , _lrvirfsOpportUnityResourceColumnLabel = Nothing
    , _lrvirfsManualAuditsGroupTitle = Nothing
    , _lrvirfsCrcInitialNavigation = Nothing
    , _lrvirfsVarianceDisclaimer = Nothing
    , _lrvirfsPassedAuditsGroupTitle = Nothing
    , _lrvirfsToplevelWarningsMessage = Nothing
    , _lrvirfsErrorMissingAuditInfo = Nothing
    , _lrvirfsCrcLongestDurationLabel = Nothing
    , _lrvirfsScorescaleLabel = Nothing
    , _lrvirfsOpportUnitySavingsColumnLabel = Nothing
    , _lrvirfsErrorLabel = Nothing
    , _lrvirfsLsPerformanceCategoryDescription = Nothing
    , _lrvirfsAuditGroupExpandTooltip = Nothing
    , _lrvirfsNotApplicableAuditsGroupTitle = Nothing
    }

-- | The title of the lab data performance category.
lrvirfsLabDataTitle :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsLabDataTitle
  = lens _lrvirfsLabDataTitle
      (\ s a -> s{_lrvirfsLabDataTitle = a})

-- | The label shown above a bulleted list of warnings.
lrvirfsWarningHeader :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsWarningHeader
  = lens _lrvirfsWarningHeader
      (\ s a -> s{_lrvirfsWarningHeader = a})

-- | The heading for the estimated page load savings opportunity of an audit.
lrvirfsOpportUnityResourceColumnLabel :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsOpportUnityResourceColumnLabel
  = lens _lrvirfsOpportUnityResourceColumnLabel
      (\ s a ->
         s{_lrvirfsOpportUnityResourceColumnLabel = a})

-- | The heading shown above a list of audits that were not computerd in the
-- run.
lrvirfsManualAuditsGroupTitle :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsManualAuditsGroupTitle
  = lens _lrvirfsManualAuditsGroupTitle
      (\ s a -> s{_lrvirfsManualAuditsGroupTitle = a})

-- | The label for the initial request in a critical request chain.
lrvirfsCrcInitialNavigation :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsCrcInitialNavigation
  = lens _lrvirfsCrcInitialNavigation
      (\ s a -> s{_lrvirfsCrcInitialNavigation = a})

-- | The disclaimer shown below a performance metric value.
lrvirfsVarianceDisclaimer :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsVarianceDisclaimer
  = lens _lrvirfsVarianceDisclaimer
      (\ s a -> s{_lrvirfsVarianceDisclaimer = a})

-- | The heading that is shown above a list of audits that are passing.
lrvirfsPassedAuditsGroupTitle :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsPassedAuditsGroupTitle
  = lens _lrvirfsPassedAuditsGroupTitle
      (\ s a -> s{_lrvirfsPassedAuditsGroupTitle = a})

-- | The label shown preceding important warnings that may have invalidated
-- an entire report.
lrvirfsToplevelWarningsMessage :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsToplevelWarningsMessage
  = lens _lrvirfsToplevelWarningsMessage
      (\ s a -> s{_lrvirfsToplevelWarningsMessage = a})

-- | The error string shown next to an erroring audit.
lrvirfsErrorMissingAuditInfo :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsErrorMissingAuditInfo
  = lens _lrvirfsErrorMissingAuditInfo
      (\ s a -> s{_lrvirfsErrorMissingAuditInfo = a})

-- | The label for values shown in the summary of critical request chains.
lrvirfsCrcLongestDurationLabel :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsCrcLongestDurationLabel
  = lens _lrvirfsCrcLongestDurationLabel
      (\ s a -> s{_lrvirfsCrcLongestDurationLabel = a})

-- | The label that explains the score gauges scale (0-49, 50-89, 90-100).
lrvirfsScorescaleLabel :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsScorescaleLabel
  = lens _lrvirfsScorescaleLabel
      (\ s a -> s{_lrvirfsScorescaleLabel = a})

-- | The heading for the estimated page load savings of opportunity audits.
lrvirfsOpportUnitySavingsColumnLabel :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsOpportUnitySavingsColumnLabel
  = lens _lrvirfsOpportUnitySavingsColumnLabel
      (\ s a ->
         s{_lrvirfsOpportUnitySavingsColumnLabel = a})

-- | The label shown next to an audit or metric that has had an error.
lrvirfsErrorLabel :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsErrorLabel
  = lens _lrvirfsErrorLabel
      (\ s a -> s{_lrvirfsErrorLabel = a})

-- | The disclaimer shown under performance explaning that the network can
-- vary.
lrvirfsLsPerformanceCategoryDescription :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsLsPerformanceCategoryDescription
  = lens _lrvirfsLsPerformanceCategoryDescription
      (\ s a ->
         s{_lrvirfsLsPerformanceCategoryDescription = a})

-- | The tooltip text on an expandable chevron icon.
lrvirfsAuditGroupExpandTooltip :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsAuditGroupExpandTooltip
  = lens _lrvirfsAuditGroupExpandTooltip
      (\ s a -> s{_lrvirfsAuditGroupExpandTooltip = a})

-- | The heading shown above a list of audits that do not apply to a page.
lrvirfsNotApplicableAuditsGroupTitle :: Lens' LighthouseResultV5I18nRendererFormattedStrings (Maybe Text)
lrvirfsNotApplicableAuditsGroupTitle
  = lens _lrvirfsNotApplicableAuditsGroupTitle
      (\ s a ->
         s{_lrvirfsNotApplicableAuditsGroupTitle = a})

instance FromJSON
         LighthouseResultV5I18nRendererFormattedStrings where
        parseJSON
          = withObject
              "LighthouseResultV5I18nRendererFormattedStrings"
              (\ o ->
                 LighthouseResultV5I18nRendererFormattedStrings' <$>
                   (o .:? "labDataTitle") <*> (o .:? "warningHeader")
                     <*> (o .:? "opportunityResourceColumnLabel")
                     <*> (o .:? "manualAuditsGroupTitle")
                     <*> (o .:? "crcInitialNavigation")
                     <*> (o .:? "varianceDisclaimer")
                     <*> (o .:? "passedAuditsGroupTitle")
                     <*> (o .:? "toplevelWarningsMessage")
                     <*> (o .:? "errorMissingAuditInfo")
                     <*> (o .:? "crcLongestDurationLabel")
                     <*> (o .:? "scorescaleLabel")
                     <*> (o .:? "opportunitySavingsColumnLabel")
                     <*> (o .:? "errorLabel")
                     <*> (o .:? "lsPerformanceCategoryDescription")
                     <*> (o .:? "auditGroupExpandTooltip")
                     <*> (o .:? "notApplicableAuditsGroupTitle"))

instance ToJSON
         LighthouseResultV5I18nRendererFormattedStrings where
        toJSON
          LighthouseResultV5I18nRendererFormattedStrings'{..}
          = object
              (catMaybes
                 [("labDataTitle" .=) <$> _lrvirfsLabDataTitle,
                  ("warningHeader" .=) <$> _lrvirfsWarningHeader,
                  ("opportunityResourceColumnLabel" .=) <$>
                    _lrvirfsOpportUnityResourceColumnLabel,
                  ("manualAuditsGroupTitle" .=) <$>
                    _lrvirfsManualAuditsGroupTitle,
                  ("crcInitialNavigation" .=) <$>
                    _lrvirfsCrcInitialNavigation,
                  ("varianceDisclaimer" .=) <$>
                    _lrvirfsVarianceDisclaimer,
                  ("passedAuditsGroupTitle" .=) <$>
                    _lrvirfsPassedAuditsGroupTitle,
                  ("toplevelWarningsMessage" .=) <$>
                    _lrvirfsToplevelWarningsMessage,
                  ("errorMissingAuditInfo" .=) <$>
                    _lrvirfsErrorMissingAuditInfo,
                  ("crcLongestDurationLabel" .=) <$>
                    _lrvirfsCrcLongestDurationLabel,
                  ("scorescaleLabel" .=) <$> _lrvirfsScorescaleLabel,
                  ("opportunitySavingsColumnLabel" .=) <$>
                    _lrvirfsOpportUnitySavingsColumnLabel,
                  ("errorLabel" .=) <$> _lrvirfsErrorLabel,
                  ("lsPerformanceCategoryDescription" .=) <$>
                    _lrvirfsLsPerformanceCategoryDescription,
                  ("auditGroupExpandTooltip" .=) <$>
                    _lrvirfsAuditGroupExpandTooltip,
                  ("notApplicableAuditsGroupTitle" .=) <$>
                    _lrvirfsNotApplicableAuditsGroupTitle])

--
-- /See:/ 'lighthouseCategoryV5AuditRefsItem' smart constructor.
data LighthouseCategoryV5AuditRefsItem = LighthouseCategoryV5AuditRefsItem'
    { _lcvariGroup  :: !(Maybe Text)
    , _lcvariWeight :: !(Maybe (Textual Double))
    , _lcvariId     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseCategoryV5AuditRefsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcvariGroup'
--
-- * 'lcvariWeight'
--
-- * 'lcvariId'
lighthouseCategoryV5AuditRefsItem
    :: LighthouseCategoryV5AuditRefsItem
lighthouseCategoryV5AuditRefsItem =
    LighthouseCategoryV5AuditRefsItem'
    { _lcvariGroup = Nothing
    , _lcvariWeight = Nothing
    , _lcvariId = Nothing
    }

-- | The category group that the audit belongs to (optional).
lcvariGroup :: Lens' LighthouseCategoryV5AuditRefsItem (Maybe Text)
lcvariGroup
  = lens _lcvariGroup (\ s a -> s{_lcvariGroup = a})

-- | The weight this audit\'s score has on the overall category score.
lcvariWeight :: Lens' LighthouseCategoryV5AuditRefsItem (Maybe Double)
lcvariWeight
  = lens _lcvariWeight (\ s a -> s{_lcvariWeight = a})
      . mapping _Coerce

-- | The audit ref id.
lcvariId :: Lens' LighthouseCategoryV5AuditRefsItem (Maybe Text)
lcvariId = lens _lcvariId (\ s a -> s{_lcvariId = a})

instance FromJSON LighthouseCategoryV5AuditRefsItem
         where
        parseJSON
          = withObject "LighthouseCategoryV5AuditRefsItem"
              (\ o ->
                 LighthouseCategoryV5AuditRefsItem' <$>
                   (o .:? "group") <*> (o .:? "weight") <*>
                     (o .:? "id"))

instance ToJSON LighthouseCategoryV5AuditRefsItem
         where
        toJSON LighthouseCategoryV5AuditRefsItem'{..}
          = object
              (catMaybes
                 [("group" .=) <$> _lcvariGroup,
                  ("weight" .=) <$> _lcvariWeight,
                  ("id" .=) <$> _lcvariId])

-- | The internationalization strings that are required to render the LHR.
--
-- /See:/ 'lighthouseResultV5I18n' smart constructor.
newtype LighthouseResultV5I18n = LighthouseResultV5I18n'
    { _lrviRendererFormattedStrings :: Maybe LighthouseResultV5I18nRendererFormattedStrings
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5I18n' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrviRendererFormattedStrings'
lighthouseResultV5I18n
    :: LighthouseResultV5I18n
lighthouseResultV5I18n =
    LighthouseResultV5I18n'
    { _lrviRendererFormattedStrings = Nothing
    }

-- | Internationalized strings that are formatted to the locale in
-- configSettings.
lrviRendererFormattedStrings :: Lens' LighthouseResultV5I18n (Maybe LighthouseResultV5I18nRendererFormattedStrings)
lrviRendererFormattedStrings
  = lens _lrviRendererFormattedStrings
      (\ s a -> s{_lrviRendererFormattedStrings = a})

instance FromJSON LighthouseResultV5I18n where
        parseJSON
          = withObject "LighthouseResultV5I18n"
              (\ o ->
                 LighthouseResultV5I18n' <$>
                   (o .:? "rendererFormattedStrings"))

instance ToJSON LighthouseResultV5I18n where
        toJSON LighthouseResultV5I18n'{..}
          = object
              (catMaybes
                 [("rendererFormattedStrings" .=) <$>
                    _lrviRendererFormattedStrings])

-- | Map of audits in the LHR.
--
-- /See:/ 'lighthouseResultV5Audits' smart constructor.
newtype LighthouseResultV5Audits = LighthouseResultV5Audits'
    { _lrvaAddtional :: HashMap Text LighthouseAuditResultV5
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LighthouseResultV5Audits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvaAddtional'
lighthouseResultV5Audits
    :: HashMap Text LighthouseAuditResultV5 -- ^ 'lrvaAddtional'
    -> LighthouseResultV5Audits
lighthouseResultV5Audits pLrvaAddtional_ =
    LighthouseResultV5Audits'
    { _lrvaAddtional = _Coerce # pLrvaAddtional_
    }

-- | An audit that was performed in this run. Keyed by audit id.
lrvaAddtional :: Lens' LighthouseResultV5Audits (HashMap Text LighthouseAuditResultV5)
lrvaAddtional
  = lens _lrvaAddtional
      (\ s a -> s{_lrvaAddtional = a})
      . _Coerce

instance FromJSON LighthouseResultV5Audits where
        parseJSON
          = withObject "LighthouseResultV5Audits"
              (\ o ->
                 LighthouseResultV5Audits' <$> (parseJSONObject o))

instance ToJSON LighthouseResultV5Audits where
        toJSON = toJSON . _lrvaAddtional
