{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types.Product where

import Network.Google.PageSpeed.Types.Sum
import Network.Google.Prelude

-- | Map of category groups in the LHR.
--
-- /See:/ 'lighthouseResultV5CategoryGroups' smart constructor.
newtype LighthouseResultV5CategoryGroups =
  LighthouseResultV5CategoryGroups'
    { _lrvcgAddtional :: HashMap Text CategoryGroupV5
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LighthouseResultV5CategoryGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvcgAddtional'
lighthouseResultV5CategoryGroups
    :: HashMap Text CategoryGroupV5 -- ^ 'lrvcgAddtional'
    -> LighthouseResultV5CategoryGroups
lighthouseResultV5CategoryGroups pLrvcgAddtional_ =
  LighthouseResultV5CategoryGroups'
    {_lrvcgAddtional = _Coerce # pLrvcgAddtional_}


lrvcgAddtional :: Lens' LighthouseResultV5CategoryGroups (HashMap Text CategoryGroupV5)
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

-- | Message containing a runtime error config.
--
-- /See:/ 'runtimeError' smart constructor.
data RuntimeError =
  RuntimeError'
    { _reCode :: !(Maybe Text)
    , _reMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RuntimeError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reCode'
--
-- * 'reMessage'
runtimeError
    :: RuntimeError
runtimeError = RuntimeError' {_reCode = Nothing, _reMessage = Nothing}


-- | The enumerated Lighthouse Error code.
reCode :: Lens' RuntimeError (Maybe Text)
reCode = lens _reCode (\ s a -> s{_reCode = a})

-- | A human readable message explaining the error code.
reMessage :: Lens' RuntimeError (Maybe Text)
reMessage
  = lens _reMessage (\ s a -> s{_reMessage = a})

instance FromJSON RuntimeError where
        parseJSON
          = withObject "RuntimeError"
              (\ o ->
                 RuntimeError' <$>
                   (o .:? "code") <*> (o .:? "message"))

instance ToJSON RuntimeError where
        toJSON RuntimeError'{..}
          = object
              (catMaybes
                 [("code" .=) <$> _reCode,
                  ("message" .=) <$> _reMessage])

-- | Message containing the configuration settings for the Lighthouse run.
--
-- /See:/ 'configSettings' smart constructor.
data ConfigSettings =
  ConfigSettings'
    { _csLocale :: !(Maybe Text)
    , _csFormFactor :: !(Maybe Text)
    , _csChannel :: !(Maybe Text)
    , _csEmulatedFormFactor :: !(Maybe Text)
    , _csOnlyCategories :: !(Maybe JSONValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csLocale'
--
-- * 'csFormFactor'
--
-- * 'csChannel'
--
-- * 'csEmulatedFormFactor'
--
-- * 'csOnlyCategories'
configSettings
    :: ConfigSettings
configSettings =
  ConfigSettings'
    { _csLocale = Nothing
    , _csFormFactor = Nothing
    , _csChannel = Nothing
    , _csEmulatedFormFactor = Nothing
    , _csOnlyCategories = Nothing
    }


-- | The locale setting.
csLocale :: Lens' ConfigSettings (Maybe Text)
csLocale = lens _csLocale (\ s a -> s{_csLocale = a})

-- | How Lighthouse should interpret this run in regards to scoring
-- performance metrics and skipping mobile-only tests in desktop.
csFormFactor :: Lens' ConfigSettings (Maybe Text)
csFormFactor
  = lens _csFormFactor (\ s a -> s{_csFormFactor = a})

-- | How Lighthouse was run, e.g. from the Chrome extension or from the npm
-- module.
csChannel :: Lens' ConfigSettings (Maybe Text)
csChannel
  = lens _csChannel (\ s a -> s{_csChannel = a})

-- | The form factor the emulation should use. This field is deprecated,
-- form_factor should be used instead.
csEmulatedFormFactor :: Lens' ConfigSettings (Maybe Text)
csEmulatedFormFactor
  = lens _csEmulatedFormFactor
      (\ s a -> s{_csEmulatedFormFactor = a})

-- | List of categories of audits the run should conduct.
csOnlyCategories :: Lens' ConfigSettings (Maybe JSONValue)
csOnlyCategories
  = lens _csOnlyCategories
      (\ s a -> s{_csOnlyCategories = a})

instance FromJSON ConfigSettings where
        parseJSON
          = withObject "ConfigSettings"
              (\ o ->
                 ConfigSettings' <$>
                   (o .:? "locale") <*> (o .:? "formFactor") <*>
                     (o .:? "channel")
                     <*> (o .:? "emulatedFormFactor")
                     <*> (o .:? "onlyCategories"))

instance ToJSON ConfigSettings where
        toJSON ConfigSettings'{..}
          = object
              (catMaybes
                 [("locale" .=) <$> _csLocale,
                  ("formFactor" .=) <$> _csFormFactor,
                  ("channel" .=) <$> _csChannel,
                  ("emulatedFormFactor" .=) <$> _csEmulatedFormFactor,
                  ("onlyCategories" .=) <$> _csOnlyCategories])

-- | Message containing Stack Pack information.
--
-- /See:/ 'stackPack' smart constructor.
data StackPack =
  StackPack'
    { _spDescriptions :: !(Maybe StackPackDescriptions)
    , _spId :: !(Maybe Text)
    , _spTitle :: !(Maybe Text)
    , _spIconDataURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StackPack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spDescriptions'
--
-- * 'spId'
--
-- * 'spTitle'
--
-- * 'spIconDataURL'
stackPack
    :: StackPack
stackPack =
  StackPack'
    { _spDescriptions = Nothing
    , _spId = Nothing
    , _spTitle = Nothing
    , _spIconDataURL = Nothing
    }


-- | The stack pack advice strings.
spDescriptions :: Lens' StackPack (Maybe StackPackDescriptions)
spDescriptions
  = lens _spDescriptions
      (\ s a -> s{_spDescriptions = a})

-- | The stack pack id.
spId :: Lens' StackPack (Maybe Text)
spId = lens _spId (\ s a -> s{_spId = a})

-- | The stack pack title.
spTitle :: Lens' StackPack (Maybe Text)
spTitle = lens _spTitle (\ s a -> s{_spTitle = a})

-- | The stack pack icon data uri.
spIconDataURL :: Lens' StackPack (Maybe Text)
spIconDataURL
  = lens _spIconDataURL
      (\ s a -> s{_spIconDataURL = a})

instance FromJSON StackPack where
        parseJSON
          = withObject "StackPack"
              (\ o ->
                 StackPack' <$>
                   (o .:? "descriptions") <*> (o .:? "id") <*>
                     (o .:? "title")
                     <*> (o .:? "iconDataURL"))

instance ToJSON StackPack where
        toJSON StackPack'{..}
          = object
              (catMaybes
                 [("descriptions" .=) <$> _spDescriptions,
                  ("id" .=) <$> _spId, ("title" .=) <$> _spTitle,
                  ("iconDataURL" .=) <$> _spIconDataURL])

-- | Freeform details section of the audit.
--
-- /See:/ 'lighthouseAuditResultV5Details' smart constructor.
newtype LighthouseAuditResultV5Details =
  LighthouseAuditResultV5Details'
    { _larvdAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LighthouseAuditResultV5Details' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larvdAddtional'
lighthouseAuditResultV5Details
    :: HashMap Text JSONValue -- ^ 'larvdAddtional'
    -> LighthouseAuditResultV5Details
lighthouseAuditResultV5Details pLarvdAddtional_ =
  LighthouseAuditResultV5Details' {_larvdAddtional = _Coerce # pLarvdAddtional_}


-- | Properties of the object.
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

-- | An audit\'s result object in a Lighthouse result.
--
-- /See:/ 'lighthouseAuditResultV5' smart constructor.
data LighthouseAuditResultV5 =
  LighthouseAuditResultV5'
    { _larvScore :: !(Maybe JSONValue)
    , _larvNumericValue :: !(Maybe (Textual Double))
    , _larvExplanation :: !(Maybe Text)
    , _larvWarnings :: !(Maybe JSONValue)
    , _larvScoreDisplayMode :: !(Maybe Text)
    , _larvDisplayValue :: !(Maybe Text)
    , _larvDetails :: !(Maybe LighthouseAuditResultV5Details)
    , _larvNumericUnit :: !(Maybe Text)
    , _larvId :: !(Maybe Text)
    , _larvTitle :: !(Maybe Text)
    , _larvErrorMessage :: !(Maybe Text)
    , _larvDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LighthouseAuditResultV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larvScore'
--
-- * 'larvNumericValue'
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
-- * 'larvNumericUnit'
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
    , _larvNumericValue = Nothing
    , _larvExplanation = Nothing
    , _larvWarnings = Nothing
    , _larvScoreDisplayMode = Nothing
    , _larvDisplayValue = Nothing
    , _larvDetails = Nothing
    , _larvNumericUnit = Nothing
    , _larvId = Nothing
    , _larvTitle = Nothing
    , _larvErrorMessage = Nothing
    , _larvDescription = Nothing
    }


-- | The score of the audit, can be null.
larvScore :: Lens' LighthouseAuditResultV5 (Maybe JSONValue)
larvScore
  = lens _larvScore (\ s a -> s{_larvScore = a})

-- | A numeric value that has a meaning specific to the audit, e.g. the
-- number of nodes in the DOM or the timestamp of a specific load event.
-- More information can be found in the audit details, if present.
larvNumericValue :: Lens' LighthouseAuditResultV5 (Maybe Double)
larvNumericValue
  = lens _larvNumericValue
      (\ s a -> s{_larvNumericValue = a})
      . mapping _Coerce

-- | An explanation of the errors in the audit.
larvExplanation :: Lens' LighthouseAuditResultV5 (Maybe Text)
larvExplanation
  = lens _larvExplanation
      (\ s a -> s{_larvExplanation = a})

-- | Possible warnings that occurred in the audit, can be null.
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

-- | The unit of the numeric_value field. Used to format the numeric value
-- for display.
larvNumericUnit :: Lens' LighthouseAuditResultV5 (Maybe Text)
larvNumericUnit
  = lens _larvNumericUnit
      (\ s a -> s{_larvNumericUnit = a})

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
                   (o .:? "score") <*> (o .:? "numericValue") <*>
                     (o .:? "explanation")
                     <*> (o .:? "warnings")
                     <*> (o .:? "scoreDisplayMode")
                     <*> (o .:? "displayValue")
                     <*> (o .:? "details")
                     <*> (o .:? "numericUnit")
                     <*> (o .:? "id")
                     <*> (o .:? "title")
                     <*> (o .:? "errorMessage")
                     <*> (o .:? "description"))

instance ToJSON LighthouseAuditResultV5 where
        toJSON LighthouseAuditResultV5'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _larvScore,
                  ("numericValue" .=) <$> _larvNumericValue,
                  ("explanation" .=) <$> _larvExplanation,
                  ("warnings" .=) <$> _larvWarnings,
                  ("scoreDisplayMode" .=) <$> _larvScoreDisplayMode,
                  ("displayValue" .=) <$> _larvDisplayValue,
                  ("details" .=) <$> _larvDetails,
                  ("numericUnit" .=) <$> _larvNumericUnit,
                  ("id" .=) <$> _larvId, ("title" .=) <$> _larvTitle,
                  ("errorMessage" .=) <$> _larvErrorMessage,
                  ("description" .=) <$> _larvDescription])

-- | Message containing environment configuration for a Lighthouse run.
--
-- /See:/ 'environment' smart constructor.
data Environment =
  Environment'
    { _eHostUserAgent :: !(Maybe Text)
    , _eBenchmarkIndex :: !(Maybe (Textual Double))
    , _eNetworkUserAgent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eHostUserAgent'
--
-- * 'eBenchmarkIndex'
--
-- * 'eNetworkUserAgent'
environment
    :: Environment
environment =
  Environment'
    { _eHostUserAgent = Nothing
    , _eBenchmarkIndex = Nothing
    , _eNetworkUserAgent = Nothing
    }


-- | The user agent string of the version of Chrome used.
eHostUserAgent :: Lens' Environment (Maybe Text)
eHostUserAgent
  = lens _eHostUserAgent
      (\ s a -> s{_eHostUserAgent = a})

-- | The benchmark index number that indicates rough device class.
eBenchmarkIndex :: Lens' Environment (Maybe Double)
eBenchmarkIndex
  = lens _eBenchmarkIndex
      (\ s a -> s{_eBenchmarkIndex = a})
      . mapping _Coerce

-- | The user agent string that was sent over the network.
eNetworkUserAgent :: Lens' Environment (Maybe Text)
eNetworkUserAgent
  = lens _eNetworkUserAgent
      (\ s a -> s{_eNetworkUserAgent = a})

instance FromJSON Environment where
        parseJSON
          = withObject "Environment"
              (\ o ->
                 Environment' <$>
                   (o .:? "hostUserAgent") <*> (o .:? "benchmarkIndex")
                     <*> (o .:? "networkUserAgent"))

instance ToJSON Environment where
        toJSON Environment'{..}
          = object
              (catMaybes
                 [("hostUserAgent" .=) <$> _eHostUserAgent,
                  ("benchmarkIndex" .=) <$> _eBenchmarkIndex,
                  ("networkUserAgent" .=) <$> _eNetworkUserAgent])

-- | The Pagespeed API response object.
--
-- /See:/ 'pagespeedAPIPagespeedResponseV5' smart constructor.
data PagespeedAPIPagespeedResponseV5 =
  PagespeedAPIPagespeedResponseV5'
    { _paprvKind :: !(Maybe Text)
    , _paprvOriginLoadingExperience :: !(Maybe PagespeedAPILoadingExperienceV5)
    , _paprvVersion :: !(Maybe PagespeedVersion)
    , _paprvCaptchaResult :: !(Maybe Text)
    , _paprvId :: !(Maybe Text)
    , _paprvLoadingExperience :: !(Maybe PagespeedAPILoadingExperienceV5)
    , _paprvLighthouseResult :: !(Maybe LighthouseResultV5)
    , _paprvAnalysisUTCTimestamp :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    { _paprvKind = Nothing
    , _paprvOriginLoadingExperience = Nothing
    , _paprvVersion = Nothing
    , _paprvCaptchaResult = Nothing
    , _paprvId = Nothing
    , _paprvLoadingExperience = Nothing
    , _paprvLighthouseResult = Nothing
    , _paprvAnalysisUTCTimestamp = Nothing
    }


-- | Kind of result.
paprvKind :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe Text)
paprvKind
  = lens _paprvKind (\ s a -> s{_paprvKind = a})

-- | Metrics of the aggregated page loading experience of the origin
paprvOriginLoadingExperience :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe PagespeedAPILoadingExperienceV5)
paprvOriginLoadingExperience
  = lens _paprvOriginLoadingExperience
      (\ s a -> s{_paprvOriginLoadingExperience = a})

-- | The version of PageSpeed used to generate these results.
paprvVersion :: Lens' PagespeedAPIPagespeedResponseV5 (Maybe PagespeedVersion)
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
                   (o .:? "kind") <*> (o .:? "originLoadingExperience")
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
                 [("kind" .=) <$> _paprvKind,
                  ("originLoadingExperience" .=) <$>
                    _paprvOriginLoadingExperience,
                  ("version" .=) <$> _paprvVersion,
                  ("captchaResult" .=) <$> _paprvCaptchaResult,
                  ("id" .=) <$> _paprvId,
                  ("loadingExperience" .=) <$> _paprvLoadingExperience,
                  ("lighthouseResult" .=) <$> _paprvLighthouseResult,
                  ("analysisUTCTimestamp" .=) <$>
                    _paprvAnalysisUTCTimestamp])

-- | The map of .
--
-- /See:/ 'pagespeedAPILoadingExperienceV5Metrics' smart constructor.
newtype PagespeedAPILoadingExperienceV5Metrics =
  PagespeedAPILoadingExperienceV5Metrics'
    { _palevmAddtional :: HashMap Text UserPageLoadMetricV5
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagespeedAPILoadingExperienceV5Metrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palevmAddtional'
pagespeedAPILoadingExperienceV5Metrics
    :: HashMap Text UserPageLoadMetricV5 -- ^ 'palevmAddtional'
    -> PagespeedAPILoadingExperienceV5Metrics
pagespeedAPILoadingExperienceV5Metrics pPalevmAddtional_ =
  PagespeedAPILoadingExperienceV5Metrics'
    {_palevmAddtional = _Coerce # pPalevmAddtional_}


palevmAddtional :: Lens' PagespeedAPILoadingExperienceV5Metrics (HashMap Text UserPageLoadMetricV5)
palevmAddtional
  = lens _palevmAddtional
      (\ s a -> s{_palevmAddtional = a})
      . _Coerce

instance FromJSON
           PagespeedAPILoadingExperienceV5Metrics
         where
        parseJSON
          = withObject "PagespeedAPILoadingExperienceV5Metrics"
              (\ o ->
                 PagespeedAPILoadingExperienceV5Metrics' <$>
                   (parseJSONObject o))

instance ToJSON
           PagespeedAPILoadingExperienceV5Metrics
         where
        toJSON = toJSON . _palevmAddtional

-- | The Lighthouse result object.
--
-- /See:/ 'lighthouseResultV5' smart constructor.
data LighthouseResultV5 =
  LighthouseResultV5'
    { _lrvRuntimeError :: !(Maybe RuntimeError)
    , _lrvCategoryGroups :: !(Maybe LighthouseResultV5CategoryGroups)
    , _lrvStackPacks :: !(Maybe [StackPack])
    , _lrvFinalURL :: !(Maybe Text)
    , _lrvConfigSettings :: !(Maybe ConfigSettings)
    , _lrvEnvironment :: !(Maybe Environment)
    , _lrvLighthouseVersion :: !(Maybe Text)
    , _lrvRunWarnings :: !(Maybe [JSONValue])
    , _lrvRequestedURL :: !(Maybe Text)
    , _lrvCategories :: !(Maybe Categories)
    , _lrvFetchTime :: !(Maybe Text)
    , _lrvUserAgent :: !(Maybe Text)
    , _lrvTiming :: !(Maybe Timing)
    , _lrvAudits :: !(Maybe LighthouseResultV5Audits)
    , _lrvI18n :: !(Maybe I18n)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LighthouseResultV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvRuntimeError'
--
-- * 'lrvCategoryGroups'
--
-- * 'lrvStackPacks'
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
    , _lrvStackPacks = Nothing
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
lrvRuntimeError :: Lens' LighthouseResultV5 (Maybe RuntimeError)
lrvRuntimeError
  = lens _lrvRuntimeError
      (\ s a -> s{_lrvRuntimeError = a})

-- | Map of category groups in the LHR.
lrvCategoryGroups :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5CategoryGroups)
lrvCategoryGroups
  = lens _lrvCategoryGroups
      (\ s a -> s{_lrvCategoryGroups = a})

-- | The Stack Pack advice strings.
lrvStackPacks :: Lens' LighthouseResultV5 [StackPack]
lrvStackPacks
  = lens _lrvStackPacks
      (\ s a -> s{_lrvStackPacks = a})
      . _Default
      . _Coerce

-- | The final resolved url that was audited.
lrvFinalURL :: Lens' LighthouseResultV5 (Maybe Text)
lrvFinalURL
  = lens _lrvFinalURL (\ s a -> s{_lrvFinalURL = a})

-- | The configuration settings for this LHR.
lrvConfigSettings :: Lens' LighthouseResultV5 (Maybe ConfigSettings)
lrvConfigSettings
  = lens _lrvConfigSettings
      (\ s a -> s{_lrvConfigSettings = a})

-- | Environment settings that were used when making this LHR.
lrvEnvironment :: Lens' LighthouseResultV5 (Maybe Environment)
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
lrvCategories :: Lens' LighthouseResultV5 (Maybe Categories)
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
lrvTiming :: Lens' LighthouseResultV5 (Maybe Timing)
lrvTiming
  = lens _lrvTiming (\ s a -> s{_lrvTiming = a})

-- | Map of audits in the LHR.
lrvAudits :: Lens' LighthouseResultV5 (Maybe LighthouseResultV5Audits)
lrvAudits
  = lens _lrvAudits (\ s a -> s{_lrvAudits = a})

-- | The internationalization strings that are required to render the LHR.
lrvI18n :: Lens' LighthouseResultV5 (Maybe I18n)
lrvI18n = lens _lrvI18n (\ s a -> s{_lrvI18n = a})

instance FromJSON LighthouseResultV5 where
        parseJSON
          = withObject "LighthouseResultV5"
              (\ o ->
                 LighthouseResultV5' <$>
                   (o .:? "runtimeError") <*> (o .:? "categoryGroups")
                     <*> (o .:? "stackPacks" .!= mempty)
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
                  ("stackPacks" .=) <$> _lrvStackPacks,
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

-- | The categories in a Lighthouse run.
--
-- /See:/ 'categories' smart constructor.
data Categories =
  Categories'
    { _cBestPractices :: !(Maybe LighthouseCategoryV5)
    , _cPerformance :: !(Maybe LighthouseCategoryV5)
    , _cPwa :: !(Maybe LighthouseCategoryV5)
    , _cSeo :: !(Maybe LighthouseCategoryV5)
    , _cAccessibility :: !(Maybe LighthouseCategoryV5)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Categories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cBestPractices'
--
-- * 'cPerformance'
--
-- * 'cPwa'
--
-- * 'cSeo'
--
-- * 'cAccessibility'
categories
    :: Categories
categories =
  Categories'
    { _cBestPractices = Nothing
    , _cPerformance = Nothing
    , _cPwa = Nothing
    , _cSeo = Nothing
    , _cAccessibility = Nothing
    }


-- | The best practices category, containing all best practices related
-- audits.
cBestPractices :: Lens' Categories (Maybe LighthouseCategoryV5)
cBestPractices
  = lens _cBestPractices
      (\ s a -> s{_cBestPractices = a})

-- | The performance category, containing all performance related audits.
cPerformance :: Lens' Categories (Maybe LighthouseCategoryV5)
cPerformance
  = lens _cPerformance (\ s a -> s{_cPerformance = a})

-- | The Progressive-Web-App (PWA) category, containing all pwa related
-- audits.
cPwa :: Lens' Categories (Maybe LighthouseCategoryV5)
cPwa = lens _cPwa (\ s a -> s{_cPwa = a})

-- | The Search-Engine-Optimization (SEO) category, containing all seo
-- related audits.
cSeo :: Lens' Categories (Maybe LighthouseCategoryV5)
cSeo = lens _cSeo (\ s a -> s{_cSeo = a})

-- | The accessibility category, containing all accessibility related audits.
cAccessibility :: Lens' Categories (Maybe LighthouseCategoryV5)
cAccessibility
  = lens _cAccessibility
      (\ s a -> s{_cAccessibility = a})

instance FromJSON Categories where
        parseJSON
          = withObject "Categories"
              (\ o ->
                 Categories' <$>
                   (o .:? "best-practices") <*> (o .:? "performance")
                     <*> (o .:? "pwa")
                     <*> (o .:? "seo")
                     <*> (o .:? "accessibility"))

instance ToJSON Categories where
        toJSON Categories'{..}
          = object
              (catMaybes
                 [("best-practices" .=) <$> _cBestPractices,
                  ("performance" .=) <$> _cPerformance,
                  ("pwa" .=) <$> _cPwa, ("seo" .=) <$> _cSeo,
                  ("accessibility" .=) <$> _cAccessibility])

-- | A proportion of data in the total distribution, bucketed by a min\/max
-- percentage. Each bucket\'s range is bounded by min \<= x \< max, In
-- millisecond.
--
-- /See:/ 'bucket' smart constructor.
data Bucket =
  Bucket'
    { _bMax :: !(Maybe (Textual Int32))
    , _bProportion :: !(Maybe (Textual Double))
    , _bMin :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Bucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMax'
--
-- * 'bProportion'
--
-- * 'bMin'
bucket
    :: Bucket
bucket = Bucket' {_bMax = Nothing, _bProportion = Nothing, _bMin = Nothing}


-- | Upper bound for a bucket\'s range.
bMax :: Lens' Bucket (Maybe Int32)
bMax
  = lens _bMax (\ s a -> s{_bMax = a}) .
      mapping _Coerce

-- | The proportion of data in this bucket.
bProportion :: Lens' Bucket (Maybe Double)
bProportion
  = lens _bProportion (\ s a -> s{_bProportion = a}) .
      mapping _Coerce

-- | Lower bound for a bucket\'s range.
bMin :: Lens' Bucket (Maybe Int32)
bMin
  = lens _bMin (\ s a -> s{_bMin = a}) .
      mapping _Coerce

instance FromJSON Bucket where
        parseJSON
          = withObject "Bucket"
              (\ o ->
                 Bucket' <$>
                   (o .:? "max") <*> (o .:? "proportion") <*>
                     (o .:? "min"))

instance ToJSON Bucket where
        toJSON Bucket'{..}
          = object
              (catMaybes
                 [("max" .=) <$> _bMax,
                  ("proportion" .=) <$> _bProportion,
                  ("min" .=) <$> _bMin])

-- | The Pagespeed Version object.
--
-- /See:/ 'pagespeedVersion' smart constructor.
data PagespeedVersion =
  PagespeedVersion'
    { _pvMinor :: !(Maybe Text)
    , _pvMajor :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagespeedVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvMinor'
--
-- * 'pvMajor'
pagespeedVersion
    :: PagespeedVersion
pagespeedVersion = PagespeedVersion' {_pvMinor = Nothing, _pvMajor = Nothing}


-- | The minor version number of PageSpeed used to generate these results.
pvMinor :: Lens' PagespeedVersion (Maybe Text)
pvMinor = lens _pvMinor (\ s a -> s{_pvMinor = a})

-- | The major version number of PageSpeed used to generate these results.
pvMajor :: Lens' PagespeedVersion (Maybe Text)
pvMajor = lens _pvMajor (\ s a -> s{_pvMajor = a})

instance FromJSON PagespeedVersion where
        parseJSON
          = withObject "PagespeedVersion"
              (\ o ->
                 PagespeedVersion' <$>
                   (o .:? "minor") <*> (o .:? "major"))

instance ToJSON PagespeedVersion where
        toJSON PagespeedVersion'{..}
          = object
              (catMaybes
                 [("minor" .=) <$> _pvMinor,
                  ("major" .=) <$> _pvMajor])

-- | A Lighthouse category.
--
-- /See:/ 'lighthouseCategoryV5' smart constructor.
data LighthouseCategoryV5 =
  LighthouseCategoryV5'
    { _lcvManualDescription :: !(Maybe Text)
    , _lcvScore :: !(Maybe JSONValue)
    , _lcvAuditRefs :: !(Maybe [AuditRefs])
    , _lcvId :: !(Maybe Text)
    , _lcvTitle :: !(Maybe Text)
    , _lcvDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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

-- | The overall score of the category, the weighted average of all its
-- audits. (The category\'s score, can be null.)
lcvScore :: Lens' LighthouseCategoryV5 (Maybe JSONValue)
lcvScore = lens _lcvScore (\ s a -> s{_lcvScore = a})

-- | An array of references to all the audit members of this category.
lcvAuditRefs :: Lens' LighthouseCategoryV5 [AuditRefs]
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

-- | Message containing a category
--
-- /See:/ 'categoryGroupV5' smart constructor.
data CategoryGroupV5 =
  CategoryGroupV5'
    { _cgvTitle :: !(Maybe Text)
    , _cgvDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CategoryGroupV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgvTitle'
--
-- * 'cgvDescription'
categoryGroupV5
    :: CategoryGroupV5
categoryGroupV5 =
  CategoryGroupV5' {_cgvTitle = Nothing, _cgvDescription = Nothing}


-- | The human readable title of the group
cgvTitle :: Lens' CategoryGroupV5 (Maybe Text)
cgvTitle = lens _cgvTitle (\ s a -> s{_cgvTitle = a})

-- | The description of what the category is grouping
cgvDescription :: Lens' CategoryGroupV5 (Maybe Text)
cgvDescription
  = lens _cgvDescription
      (\ s a -> s{_cgvDescription = a})

instance FromJSON CategoryGroupV5 where
        parseJSON
          = withObject "CategoryGroupV5"
              (\ o ->
                 CategoryGroupV5' <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON CategoryGroupV5 where
        toJSON CategoryGroupV5'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _cgvTitle,
                  ("description" .=) <$> _cgvDescription])

-- | The CrUX loading experience object that contains CrUX data breakdowns.
--
-- /See:/ 'pagespeedAPILoadingExperienceV5' smart constructor.
data PagespeedAPILoadingExperienceV5 =
  PagespeedAPILoadingExperienceV5'
    { _palevOriginFallback :: !(Maybe Bool)
    , _palevMetrics :: !(Maybe PagespeedAPILoadingExperienceV5Metrics)
    , _palevInitialURL :: !(Maybe Text)
    , _palevId :: !(Maybe Text)
    , _palevOverallCategory :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagespeedAPILoadingExperienceV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palevOriginFallback'
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
    { _palevOriginFallback = Nothing
    , _palevMetrics = Nothing
    , _palevInitialURL = Nothing
    , _palevId = Nothing
    , _palevOverallCategory = Nothing
    }


-- | True if the result is an origin fallback from a page, false otherwise.
palevOriginFallback :: Lens' PagespeedAPILoadingExperienceV5 (Maybe Bool)
palevOriginFallback
  = lens _palevOriginFallback
      (\ s a -> s{_palevOriginFallback = a})

-- | The map of .
palevMetrics :: Lens' PagespeedAPILoadingExperienceV5 (Maybe PagespeedAPILoadingExperienceV5Metrics)
palevMetrics
  = lens _palevMetrics (\ s a -> s{_palevMetrics = a})

-- | The requested URL, which may differ from the resolved \"id\".
palevInitialURL :: Lens' PagespeedAPILoadingExperienceV5 (Maybe Text)
palevInitialURL
  = lens _palevInitialURL
      (\ s a -> s{_palevInitialURL = a})

-- | The url, pattern or origin which the metrics are on.
palevId :: Lens' PagespeedAPILoadingExperienceV5 (Maybe Text)
palevId = lens _palevId (\ s a -> s{_palevId = a})

-- | The human readable speed \"category\" of the id.
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
                   (o .:? "origin_fallback") <*> (o .:? "metrics") <*>
                     (o .:? "initial_url")
                     <*> (o .:? "id")
                     <*> (o .:? "overall_category"))

instance ToJSON PagespeedAPILoadingExperienceV5 where
        toJSON PagespeedAPILoadingExperienceV5'{..}
          = object
              (catMaybes
                 [("origin_fallback" .=) <$> _palevOriginFallback,
                  ("metrics" .=) <$> _palevMetrics,
                  ("initial_url" .=) <$> _palevInitialURL,
                  ("id" .=) <$> _palevId,
                  ("overall_category" .=) <$> _palevOverallCategory])

-- | A light reference to an audit by id, used to group and weight audits in
-- a given category.
--
-- /See:/ 'auditRefs' smart constructor.
data AuditRefs =
  AuditRefs'
    { _arGroup :: !(Maybe Text)
    , _arAcronym :: !(Maybe Text)
    , _arWeight :: !(Maybe (Textual Double))
    , _arRelevantAudits :: !(Maybe [Text])
    , _arId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditRefs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arGroup'
--
-- * 'arAcronym'
--
-- * 'arWeight'
--
-- * 'arRelevantAudits'
--
-- * 'arId'
auditRefs
    :: AuditRefs
auditRefs =
  AuditRefs'
    { _arGroup = Nothing
    , _arAcronym = Nothing
    , _arWeight = Nothing
    , _arRelevantAudits = Nothing
    , _arId = Nothing
    }


-- | The category group that the audit belongs to (optional).
arGroup :: Lens' AuditRefs (Maybe Text)
arGroup = lens _arGroup (\ s a -> s{_arGroup = a})

-- | The conventional acronym for the audit\/metric.
arAcronym :: Lens' AuditRefs (Maybe Text)
arAcronym
  = lens _arAcronym (\ s a -> s{_arAcronym = a})

-- | The weight this audit\'s score has on the overall category score.
arWeight :: Lens' AuditRefs (Maybe Double)
arWeight
  = lens _arWeight (\ s a -> s{_arWeight = a}) .
      mapping _Coerce

-- | Any audit IDs closely relevant to this one.
arRelevantAudits :: Lens' AuditRefs [Text]
arRelevantAudits
  = lens _arRelevantAudits
      (\ s a -> s{_arRelevantAudits = a})
      . _Default
      . _Coerce

-- | The audit ref id.
arId :: Lens' AuditRefs (Maybe Text)
arId = lens _arId (\ s a -> s{_arId = a})

instance FromJSON AuditRefs where
        parseJSON
          = withObject "AuditRefs"
              (\ o ->
                 AuditRefs' <$>
                   (o .:? "group") <*> (o .:? "acronym") <*>
                     (o .:? "weight")
                     <*> (o .:? "relevantAudits" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON AuditRefs where
        toJSON AuditRefs'{..}
          = object
              (catMaybes
                 [("group" .=) <$> _arGroup,
                  ("acronym" .=) <$> _arAcronym,
                  ("weight" .=) <$> _arWeight,
                  ("relevantAudits" .=) <$> _arRelevantAudits,
                  ("id" .=) <$> _arId])

-- | The stack pack advice strings.
--
-- /See:/ 'stackPackDescriptions' smart constructor.
newtype StackPackDescriptions =
  StackPackDescriptions'
    { _spdAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StackPackDescriptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdAddtional'
stackPackDescriptions
    :: HashMap Text Text -- ^ 'spdAddtional'
    -> StackPackDescriptions
stackPackDescriptions pSpdAddtional_ =
  StackPackDescriptions' {_spdAddtional = _Coerce # pSpdAddtional_}


spdAddtional :: Lens' StackPackDescriptions (HashMap Text Text)
spdAddtional
  = lens _spdAddtional (\ s a -> s{_spdAddtional = a})
      . _Coerce

instance FromJSON StackPackDescriptions where
        parseJSON
          = withObject "StackPackDescriptions"
              (\ o ->
                 StackPackDescriptions' <$> (parseJSONObject o))

instance ToJSON StackPackDescriptions where
        toJSON = toJSON . _spdAddtional

-- | Message holding the formatted strings used in the renderer.
--
-- /See:/ 'rendererFormattedStrings' smart constructor.
data RendererFormattedStrings =
  RendererFormattedStrings'
    { _rfsRuntimeUnknown :: !(Maybe Text)
    , _rfsCalculatorLink :: !(Maybe Text)
    , _rfsLabDataTitle :: !(Maybe Text)
    , _rfsDropdownSaveHTML :: !(Maybe Text)
    , _rfsRuntimeSettingsNetworkThrottling :: !(Maybe Text)
    , _rfsRuntimeDesktopEmulation :: !(Maybe Text)
    , _rfsWarningHeader :: !(Maybe Text)
    , _rfsRuntimeSettingsUA :: !(Maybe Text)
    , _rfsOpportUnityResourceColumnLabel :: !(Maybe Text)
    , _rfsManualAuditsGroupTitle :: !(Maybe Text)
    , _rfsDropdownSaveGist :: !(Maybe Text)
    , _rfsRuntimeSettingsUANetwork :: !(Maybe Text)
    , _rfsCrcInitialNavigation :: !(Maybe Text)
    , _rfsDropdownPrintSummary :: !(Maybe Text)
    , _rfsVarianceDisclaimer :: !(Maybe Text)
    , _rfsRuntimeSettingsTitle :: !(Maybe Text)
    , _rfsPassedAuditsGroupTitle :: !(Maybe Text)
    , _rfsRuntimeSettingsDevice :: !(Maybe Text)
    , _rfsDropdownViewer :: !(Maybe Text)
    , _rfsFooterIssue :: !(Maybe Text)
    , _rfsRuntimeSettingsAxeVersion :: !(Maybe Text)
    , _rfsToplevelWarningsMessage :: !(Maybe Text)
    , _rfsErrorMissingAuditInfo :: !(Maybe Text)
    , _rfsRuntimeSettingsURL :: !(Maybe Text)
    , _rfsRuntimeSettingsCPUThrottling :: !(Maybe Text)
    , _rfsThirdPartyResourcesLabel :: !(Maybe Text)
    , _rfsDropdownSaveJSON :: !(Maybe Text)
    , _rfsRuntimeSettingsChannel :: !(Maybe Text)
    , _rfsCrcLongestDurationLabel :: !(Maybe Text)
    , _rfsThrottlingProvided :: !(Maybe Text)
    , _rfsDropdownPrintExpanded :: !(Maybe Text)
    , _rfsRuntimeMobileEmulation :: !(Maybe Text)
    , _rfsRuntimeSettingsFetchTime :: !(Maybe Text)
    , _rfsWarningAuditsGroupTitle :: !(Maybe Text)
    , _rfsSnippetExpandButtonLabel :: !(Maybe Text)
    , _rfsRuntimeSettingsBenchmark :: !(Maybe Text)
    , _rfsSnippetCollapseButtonLabel :: !(Maybe Text)
    , _rfsDropdownDarkTheme :: !(Maybe Text)
    , _rfsScorescaleLabel :: !(Maybe Text)
    , _rfsShowRelevantAudits :: !(Maybe Text)
    , _rfsDropdownCopyJSON :: !(Maybe Text)
    , _rfsOpportUnitySavingsColumnLabel :: !(Maybe Text)
    , _rfsErrorLabel :: !(Maybe Text)
    , _rfsViewTreemapLabel :: !(Maybe Text)
    , _rfsLsPerformanceCategoryDescription :: !(Maybe Text)
    , _rfsAuditGroupExpandTooltip :: !(Maybe Text)
    , _rfsRuntimeNoEmulation :: !(Maybe Text)
    , _rfsNotApplicableAuditsGroupTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RendererFormattedStrings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfsRuntimeUnknown'
--
-- * 'rfsCalculatorLink'
--
-- * 'rfsLabDataTitle'
--
-- * 'rfsDropdownSaveHTML'
--
-- * 'rfsRuntimeSettingsNetworkThrottling'
--
-- * 'rfsRuntimeDesktopEmulation'
--
-- * 'rfsWarningHeader'
--
-- * 'rfsRuntimeSettingsUA'
--
-- * 'rfsOpportUnityResourceColumnLabel'
--
-- * 'rfsManualAuditsGroupTitle'
--
-- * 'rfsDropdownSaveGist'
--
-- * 'rfsRuntimeSettingsUANetwork'
--
-- * 'rfsCrcInitialNavigation'
--
-- * 'rfsDropdownPrintSummary'
--
-- * 'rfsVarianceDisclaimer'
--
-- * 'rfsRuntimeSettingsTitle'
--
-- * 'rfsPassedAuditsGroupTitle'
--
-- * 'rfsRuntimeSettingsDevice'
--
-- * 'rfsDropdownViewer'
--
-- * 'rfsFooterIssue'
--
-- * 'rfsRuntimeSettingsAxeVersion'
--
-- * 'rfsToplevelWarningsMessage'
--
-- * 'rfsErrorMissingAuditInfo'
--
-- * 'rfsRuntimeSettingsURL'
--
-- * 'rfsRuntimeSettingsCPUThrottling'
--
-- * 'rfsThirdPartyResourcesLabel'
--
-- * 'rfsDropdownSaveJSON'
--
-- * 'rfsRuntimeSettingsChannel'
--
-- * 'rfsCrcLongestDurationLabel'
--
-- * 'rfsThrottlingProvided'
--
-- * 'rfsDropdownPrintExpanded'
--
-- * 'rfsRuntimeMobileEmulation'
--
-- * 'rfsRuntimeSettingsFetchTime'
--
-- * 'rfsWarningAuditsGroupTitle'
--
-- * 'rfsSnippetExpandButtonLabel'
--
-- * 'rfsRuntimeSettingsBenchmark'
--
-- * 'rfsSnippetCollapseButtonLabel'
--
-- * 'rfsDropdownDarkTheme'
--
-- * 'rfsScorescaleLabel'
--
-- * 'rfsShowRelevantAudits'
--
-- * 'rfsDropdownCopyJSON'
--
-- * 'rfsOpportUnitySavingsColumnLabel'
--
-- * 'rfsErrorLabel'
--
-- * 'rfsViewTreemapLabel'
--
-- * 'rfsLsPerformanceCategoryDescription'
--
-- * 'rfsAuditGroupExpandTooltip'
--
-- * 'rfsRuntimeNoEmulation'
--
-- * 'rfsNotApplicableAuditsGroupTitle'
rendererFormattedStrings
    :: RendererFormattedStrings
rendererFormattedStrings =
  RendererFormattedStrings'
    { _rfsRuntimeUnknown = Nothing
    , _rfsCalculatorLink = Nothing
    , _rfsLabDataTitle = Nothing
    , _rfsDropdownSaveHTML = Nothing
    , _rfsRuntimeSettingsNetworkThrottling = Nothing
    , _rfsRuntimeDesktopEmulation = Nothing
    , _rfsWarningHeader = Nothing
    , _rfsRuntimeSettingsUA = Nothing
    , _rfsOpportUnityResourceColumnLabel = Nothing
    , _rfsManualAuditsGroupTitle = Nothing
    , _rfsDropdownSaveGist = Nothing
    , _rfsRuntimeSettingsUANetwork = Nothing
    , _rfsCrcInitialNavigation = Nothing
    , _rfsDropdownPrintSummary = Nothing
    , _rfsVarianceDisclaimer = Nothing
    , _rfsRuntimeSettingsTitle = Nothing
    , _rfsPassedAuditsGroupTitle = Nothing
    , _rfsRuntimeSettingsDevice = Nothing
    , _rfsDropdownViewer = Nothing
    , _rfsFooterIssue = Nothing
    , _rfsRuntimeSettingsAxeVersion = Nothing
    , _rfsToplevelWarningsMessage = Nothing
    , _rfsErrorMissingAuditInfo = Nothing
    , _rfsRuntimeSettingsURL = Nothing
    , _rfsRuntimeSettingsCPUThrottling = Nothing
    , _rfsThirdPartyResourcesLabel = Nothing
    , _rfsDropdownSaveJSON = Nothing
    , _rfsRuntimeSettingsChannel = Nothing
    , _rfsCrcLongestDurationLabel = Nothing
    , _rfsThrottlingProvided = Nothing
    , _rfsDropdownPrintExpanded = Nothing
    , _rfsRuntimeMobileEmulation = Nothing
    , _rfsRuntimeSettingsFetchTime = Nothing
    , _rfsWarningAuditsGroupTitle = Nothing
    , _rfsSnippetExpandButtonLabel = Nothing
    , _rfsRuntimeSettingsBenchmark = Nothing
    , _rfsSnippetCollapseButtonLabel = Nothing
    , _rfsDropdownDarkTheme = Nothing
    , _rfsScorescaleLabel = Nothing
    , _rfsShowRelevantAudits = Nothing
    , _rfsDropdownCopyJSON = Nothing
    , _rfsOpportUnitySavingsColumnLabel = Nothing
    , _rfsErrorLabel = Nothing
    , _rfsViewTreemapLabel = Nothing
    , _rfsLsPerformanceCategoryDescription = Nothing
    , _rfsAuditGroupExpandTooltip = Nothing
    , _rfsRuntimeNoEmulation = Nothing
    , _rfsNotApplicableAuditsGroupTitle = Nothing
    }


-- | Descriptive explanation for a runtime setting that is set to an unknown
-- value.
rfsRuntimeUnknown :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeUnknown
  = lens _rfsRuntimeUnknown
      (\ s a -> s{_rfsRuntimeUnknown = a})

-- | Text link pointing to the Lighthouse scoring calculator. This link
-- immediately follows a sentence stating the performance score is
-- calculated from the perf metrics.
rfsCalculatorLink :: Lens' RendererFormattedStrings (Maybe Text)
rfsCalculatorLink
  = lens _rfsCalculatorLink
      (\ s a -> s{_rfsCalculatorLink = a})

-- | The title of the lab data performance category.
rfsLabDataTitle :: Lens' RendererFormattedStrings (Maybe Text)
rfsLabDataTitle
  = lens _rfsLabDataTitle
      (\ s a -> s{_rfsLabDataTitle = a})

-- | Option in a dropdown menu that saves the Lighthouse report HTML locally
-- to the system as a \'.html\' file.
rfsDropdownSaveHTML :: Lens' RendererFormattedStrings (Maybe Text)
rfsDropdownSaveHTML
  = lens _rfsDropdownSaveHTML
      (\ s a -> s{_rfsDropdownSaveHTML = a})

-- | Label for a row in a table that describes the network throttling
-- conditions that were used during a Lighthouse run, if any.
rfsRuntimeSettingsNetworkThrottling :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsNetworkThrottling
  = lens _rfsRuntimeSettingsNetworkThrottling
      (\ s a ->
         s{_rfsRuntimeSettingsNetworkThrottling = a})

-- | Descriptive explanation for emulation setting when emulating a generic
-- desktop form factor, as opposed to a mobile-device like form factor.
rfsRuntimeDesktopEmulation :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeDesktopEmulation
  = lens _rfsRuntimeDesktopEmulation
      (\ s a -> s{_rfsRuntimeDesktopEmulation = a})

-- | The label shown above a bulleted list of warnings.
rfsWarningHeader :: Lens' RendererFormattedStrings (Maybe Text)
rfsWarningHeader
  = lens _rfsWarningHeader
      (\ s a -> s{_rfsWarningHeader = a})

-- | Label for a row in a table that shows the User Agent that was detected
-- on the Host machine that ran Lighthouse.
rfsRuntimeSettingsUA :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsUA
  = lens _rfsRuntimeSettingsUA
      (\ s a -> s{_rfsRuntimeSettingsUA = a})

-- | The heading for the estimated page load savings opportunity of an audit.
rfsOpportUnityResourceColumnLabel :: Lens' RendererFormattedStrings (Maybe Text)
rfsOpportUnityResourceColumnLabel
  = lens _rfsOpportUnityResourceColumnLabel
      (\ s a -> s{_rfsOpportUnityResourceColumnLabel = a})

-- | The heading shown above a list of audits that were not computerd in the
-- run.
rfsManualAuditsGroupTitle :: Lens' RendererFormattedStrings (Maybe Text)
rfsManualAuditsGroupTitle
  = lens _rfsManualAuditsGroupTitle
      (\ s a -> s{_rfsManualAuditsGroupTitle = a})

-- | Option in a dropdown menu that saves the current report as a new GitHub
-- Gist.
rfsDropdownSaveGist :: Lens' RendererFormattedStrings (Maybe Text)
rfsDropdownSaveGist
  = lens _rfsDropdownSaveGist
      (\ s a -> s{_rfsDropdownSaveGist = a})

-- | Label for a row in a table that shows the User Agent that was used to
-- send out all network requests during the Lighthouse run.
rfsRuntimeSettingsUANetwork :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsUANetwork
  = lens _rfsRuntimeSettingsUANetwork
      (\ s a -> s{_rfsRuntimeSettingsUANetwork = a})

-- | The label for the initial request in a critical request chain.
rfsCrcInitialNavigation :: Lens' RendererFormattedStrings (Maybe Text)
rfsCrcInitialNavigation
  = lens _rfsCrcInitialNavigation
      (\ s a -> s{_rfsCrcInitialNavigation = a})

-- | Option in a dropdown menu that opens a small, summary report in a print
-- dialog.
rfsDropdownPrintSummary :: Lens' RendererFormattedStrings (Maybe Text)
rfsDropdownPrintSummary
  = lens _rfsDropdownPrintSummary
      (\ s a -> s{_rfsDropdownPrintSummary = a})

-- | The disclaimer shown below a performance metric value.
rfsVarianceDisclaimer :: Lens' RendererFormattedStrings (Maybe Text)
rfsVarianceDisclaimer
  = lens _rfsVarianceDisclaimer
      (\ s a -> s{_rfsVarianceDisclaimer = a})

-- | Title of the Runtime settings table in a Lighthouse report. Runtime
-- settings are the environment configurations that a specific report used
-- at auditing time.
rfsRuntimeSettingsTitle :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsTitle
  = lens _rfsRuntimeSettingsTitle
      (\ s a -> s{_rfsRuntimeSettingsTitle = a})

-- | The heading that is shown above a list of audits that are passing.
rfsPassedAuditsGroupTitle :: Lens' RendererFormattedStrings (Maybe Text)
rfsPassedAuditsGroupTitle
  = lens _rfsPassedAuditsGroupTitle
      (\ s a -> s{_rfsPassedAuditsGroupTitle = a})

-- | Label for a row in a table that describes the kind of device that was
-- emulated for the Lighthouse run. Example values for row elements: \'No
-- Emulation\', \'Emulated Desktop\', etc.
rfsRuntimeSettingsDevice :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsDevice
  = lens _rfsRuntimeSettingsDevice
      (\ s a -> s{_rfsRuntimeSettingsDevice = a})

-- | Option in a dropdown menu that opens the current report in the
-- Lighthouse Viewer Application.
rfsDropdownViewer :: Lens' RendererFormattedStrings (Maybe Text)
rfsDropdownViewer
  = lens _rfsDropdownViewer
      (\ s a -> s{_rfsDropdownViewer = a})

-- | Label for button to create an issue against the Lighthouse GitHub
-- project.
rfsFooterIssue :: Lens' RendererFormattedStrings (Maybe Text)
rfsFooterIssue
  = lens _rfsFooterIssue
      (\ s a -> s{_rfsFooterIssue = a})

-- | Label for a row in a table that shows the version of the Axe library
-- used
rfsRuntimeSettingsAxeVersion :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsAxeVersion
  = lens _rfsRuntimeSettingsAxeVersion
      (\ s a -> s{_rfsRuntimeSettingsAxeVersion = a})

-- | The label shown preceding important warnings that may have invalidated
-- an entire report.
rfsToplevelWarningsMessage :: Lens' RendererFormattedStrings (Maybe Text)
rfsToplevelWarningsMessage
  = lens _rfsToplevelWarningsMessage
      (\ s a -> s{_rfsToplevelWarningsMessage = a})

-- | The error string shown next to an erroring audit.
rfsErrorMissingAuditInfo :: Lens' RendererFormattedStrings (Maybe Text)
rfsErrorMissingAuditInfo
  = lens _rfsErrorMissingAuditInfo
      (\ s a -> s{_rfsErrorMissingAuditInfo = a})

-- | Label for a row in a table that shows the URL that was audited during a
-- Lighthouse run.
rfsRuntimeSettingsURL :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsURL
  = lens _rfsRuntimeSettingsURL
      (\ s a -> s{_rfsRuntimeSettingsURL = a})

-- | Label for a row in a table that describes the CPU throttling conditions
-- that were used during a Lighthouse run, if any.
rfsRuntimeSettingsCPUThrottling :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsCPUThrottling
  = lens _rfsRuntimeSettingsCPUThrottling
      (\ s a -> s{_rfsRuntimeSettingsCPUThrottling = a})

-- | This label is for a filter checkbox above a table of items
rfsThirdPartyResourcesLabel :: Lens' RendererFormattedStrings (Maybe Text)
rfsThirdPartyResourcesLabel
  = lens _rfsThirdPartyResourcesLabel
      (\ s a -> s{_rfsThirdPartyResourcesLabel = a})

-- | Option in a dropdown menu that saves the Lighthouse JSON object to the
-- local system as a \'.json\' file.
rfsDropdownSaveJSON :: Lens' RendererFormattedStrings (Maybe Text)
rfsDropdownSaveJSON
  = lens _rfsDropdownSaveJSON
      (\ s a -> s{_rfsDropdownSaveJSON = a})

-- | Label for a row in a table that shows in what tool Lighthouse is being
-- run (e.g. The lighthouse CLI, Chrome DevTools, Lightrider, WebPageTest,
-- etc).
rfsRuntimeSettingsChannel :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsChannel
  = lens _rfsRuntimeSettingsChannel
      (\ s a -> s{_rfsRuntimeSettingsChannel = a})

-- | The label for values shown in the summary of critical request chains.
rfsCrcLongestDurationLabel :: Lens' RendererFormattedStrings (Maybe Text)
rfsCrcLongestDurationLabel
  = lens _rfsCrcLongestDurationLabel
      (\ s a -> s{_rfsCrcLongestDurationLabel = a})

-- | Descriptive explanation for environment throttling that was provided by
-- the runtime environment instead of provided by Lighthouse throttling.
rfsThrottlingProvided :: Lens' RendererFormattedStrings (Maybe Text)
rfsThrottlingProvided
  = lens _rfsThrottlingProvided
      (\ s a -> s{_rfsThrottlingProvided = a})

-- | Option in a dropdown menu that opens a full Lighthouse report in a print
-- dialog.
rfsDropdownPrintExpanded :: Lens' RendererFormattedStrings (Maybe Text)
rfsDropdownPrintExpanded
  = lens _rfsDropdownPrintExpanded
      (\ s a -> s{_rfsDropdownPrintExpanded = a})

-- | Descriptive explanation for emulation setting when emulating a Nexus 5X
-- mobile device.
rfsRuntimeMobileEmulation :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeMobileEmulation
  = lens _rfsRuntimeMobileEmulation
      (\ s a -> s{_rfsRuntimeMobileEmulation = a})

-- | Label for a row in a table that shows the time at which a Lighthouse run
-- was conducted; formatted as a timestamp, e.g. Jan 1, 1970 12:00 AM UTC.
rfsRuntimeSettingsFetchTime :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsFetchTime
  = lens _rfsRuntimeSettingsFetchTime
      (\ s a -> s{_rfsRuntimeSettingsFetchTime = a})

-- | The heading that is shown above a list of audits that have warnings
rfsWarningAuditsGroupTitle :: Lens' RendererFormattedStrings (Maybe Text)
rfsWarningAuditsGroupTitle
  = lens _rfsWarningAuditsGroupTitle
      (\ s a -> s{_rfsWarningAuditsGroupTitle = a})

-- | The label for the button to show all lines of a snippet
rfsSnippetExpandButtonLabel :: Lens' RendererFormattedStrings (Maybe Text)
rfsSnippetExpandButtonLabel
  = lens _rfsSnippetExpandButtonLabel
      (\ s a -> s{_rfsSnippetExpandButtonLabel = a})

-- | Label for a row in a table that shows the estimated CPU power of the
-- machine running Lighthouse. Example row values: 532, 1492, 783.
rfsRuntimeSettingsBenchmark :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeSettingsBenchmark
  = lens _rfsRuntimeSettingsBenchmark
      (\ s a -> s{_rfsRuntimeSettingsBenchmark = a})

-- | The label for the button to show only a few lines of a snippet
rfsSnippetCollapseButtonLabel :: Lens' RendererFormattedStrings (Maybe Text)
rfsSnippetCollapseButtonLabel
  = lens _rfsSnippetCollapseButtonLabel
      (\ s a -> s{_rfsSnippetCollapseButtonLabel = a})

-- | Option in a dropdown menu that toggles the themeing of the report
-- between Light(default) and Dark themes.
rfsDropdownDarkTheme :: Lens' RendererFormattedStrings (Maybe Text)
rfsDropdownDarkTheme
  = lens _rfsDropdownDarkTheme
      (\ s a -> s{_rfsDropdownDarkTheme = a})

-- | The label that explains the score gauges scale (0-49, 50-89, 90-100).
rfsScorescaleLabel :: Lens' RendererFormattedStrings (Maybe Text)
rfsScorescaleLabel
  = lens _rfsScorescaleLabel
      (\ s a -> s{_rfsScorescaleLabel = a})

-- | Label preceding a radio control for filtering the list of audits. The
-- radio choices are various performance metrics (FCP, LCP, TBT), and if
-- chosen, the audits in the report are hidden if they are not relevant to
-- the selected metric.
rfsShowRelevantAudits :: Lens' RendererFormattedStrings (Maybe Text)
rfsShowRelevantAudits
  = lens _rfsShowRelevantAudits
      (\ s a -> s{_rfsShowRelevantAudits = a})

-- | Option in a dropdown menu that copies the Lighthouse JSON object to the
-- system clipboard.
rfsDropdownCopyJSON :: Lens' RendererFormattedStrings (Maybe Text)
rfsDropdownCopyJSON
  = lens _rfsDropdownCopyJSON
      (\ s a -> s{_rfsDropdownCopyJSON = a})

-- | The heading for the estimated page load savings of opportunity audits.
rfsOpportUnitySavingsColumnLabel :: Lens' RendererFormattedStrings (Maybe Text)
rfsOpportUnitySavingsColumnLabel
  = lens _rfsOpportUnitySavingsColumnLabel
      (\ s a -> s{_rfsOpportUnitySavingsColumnLabel = a})

-- | The label shown next to an audit or metric that has had an error.
rfsErrorLabel :: Lens' RendererFormattedStrings (Maybe Text)
rfsErrorLabel
  = lens _rfsErrorLabel
      (\ s a -> s{_rfsErrorLabel = a})

-- | Label for a button that opens the Treemap App
rfsViewTreemapLabel :: Lens' RendererFormattedStrings (Maybe Text)
rfsViewTreemapLabel
  = lens _rfsViewTreemapLabel
      (\ s a -> s{_rfsViewTreemapLabel = a})

-- | The disclaimer shown under performance explaining that the network can
-- vary.
rfsLsPerformanceCategoryDescription :: Lens' RendererFormattedStrings (Maybe Text)
rfsLsPerformanceCategoryDescription
  = lens _rfsLsPerformanceCategoryDescription
      (\ s a ->
         s{_rfsLsPerformanceCategoryDescription = a})

-- | The tooltip text on an expandable chevron icon.
rfsAuditGroupExpandTooltip :: Lens' RendererFormattedStrings (Maybe Text)
rfsAuditGroupExpandTooltip
  = lens _rfsAuditGroupExpandTooltip
      (\ s a -> s{_rfsAuditGroupExpandTooltip = a})

-- | Descriptive explanation for emulation setting when no device emulation
-- is set.
rfsRuntimeNoEmulation :: Lens' RendererFormattedStrings (Maybe Text)
rfsRuntimeNoEmulation
  = lens _rfsRuntimeNoEmulation
      (\ s a -> s{_rfsRuntimeNoEmulation = a})

-- | The heading shown above a list of audits that do not apply to a page.
rfsNotApplicableAuditsGroupTitle :: Lens' RendererFormattedStrings (Maybe Text)
rfsNotApplicableAuditsGroupTitle
  = lens _rfsNotApplicableAuditsGroupTitle
      (\ s a -> s{_rfsNotApplicableAuditsGroupTitle = a})

instance FromJSON RendererFormattedStrings where
        parseJSON
          = withObject "RendererFormattedStrings"
              (\ o ->
                 RendererFormattedStrings' <$>
                   (o .:? "runtimeUnknown") <*> (o .:? "calculatorLink")
                     <*> (o .:? "labDataTitle")
                     <*> (o .:? "dropdownSaveHTML")
                     <*> (o .:? "runtimeSettingsNetworkThrottling")
                     <*> (o .:? "runtimeDesktopEmulation")
                     <*> (o .:? "warningHeader")
                     <*> (o .:? "runtimeSettingsUA")
                     <*> (o .:? "opportunityResourceColumnLabel")
                     <*> (o .:? "manualAuditsGroupTitle")
                     <*> (o .:? "dropdownSaveGist")
                     <*> (o .:? "runtimeSettingsUANetwork")
                     <*> (o .:? "crcInitialNavigation")
                     <*> (o .:? "dropdownPrintSummary")
                     <*> (o .:? "varianceDisclaimer")
                     <*> (o .:? "runtimeSettingsTitle")
                     <*> (o .:? "passedAuditsGroupTitle")
                     <*> (o .:? "runtimeSettingsDevice")
                     <*> (o .:? "dropdownViewer")
                     <*> (o .:? "footerIssue")
                     <*> (o .:? "runtimeSettingsAxeVersion")
                     <*> (o .:? "toplevelWarningsMessage")
                     <*> (o .:? "errorMissingAuditInfo")
                     <*> (o .:? "runtimeSettingsUrl")
                     <*> (o .:? "runtimeSettingsCPUThrottling")
                     <*> (o .:? "thirdPartyResourcesLabel")
                     <*> (o .:? "dropdownSaveJSON")
                     <*> (o .:? "runtimeSettingsChannel")
                     <*> (o .:? "crcLongestDurationLabel")
                     <*> (o .:? "throttlingProvided")
                     <*> (o .:? "dropdownPrintExpanded")
                     <*> (o .:? "runtimeMobileEmulation")
                     <*> (o .:? "runtimeSettingsFetchTime")
                     <*> (o .:? "warningAuditsGroupTitle")
                     <*> (o .:? "snippetExpandButtonLabel")
                     <*> (o .:? "runtimeSettingsBenchmark")
                     <*> (o .:? "snippetCollapseButtonLabel")
                     <*> (o .:? "dropdownDarkTheme")
                     <*> (o .:? "scorescaleLabel")
                     <*> (o .:? "showRelevantAudits")
                     <*> (o .:? "dropdownCopyJSON")
                     <*> (o .:? "opportunitySavingsColumnLabel")
                     <*> (o .:? "errorLabel")
                     <*> (o .:? "viewTreemapLabel")
                     <*> (o .:? "lsPerformanceCategoryDescription")
                     <*> (o .:? "auditGroupExpandTooltip")
                     <*> (o .:? "runtimeNoEmulation")
                     <*> (o .:? "notApplicableAuditsGroupTitle"))

instance ToJSON RendererFormattedStrings where
        toJSON RendererFormattedStrings'{..}
          = object
              (catMaybes
                 [("runtimeUnknown" .=) <$> _rfsRuntimeUnknown,
                  ("calculatorLink" .=) <$> _rfsCalculatorLink,
                  ("labDataTitle" .=) <$> _rfsLabDataTitle,
                  ("dropdownSaveHTML" .=) <$> _rfsDropdownSaveHTML,
                  ("runtimeSettingsNetworkThrottling" .=) <$>
                    _rfsRuntimeSettingsNetworkThrottling,
                  ("runtimeDesktopEmulation" .=) <$>
                    _rfsRuntimeDesktopEmulation,
                  ("warningHeader" .=) <$> _rfsWarningHeader,
                  ("runtimeSettingsUA" .=) <$> _rfsRuntimeSettingsUA,
                  ("opportunityResourceColumnLabel" .=) <$>
                    _rfsOpportUnityResourceColumnLabel,
                  ("manualAuditsGroupTitle" .=) <$>
                    _rfsManualAuditsGroupTitle,
                  ("dropdownSaveGist" .=) <$> _rfsDropdownSaveGist,
                  ("runtimeSettingsUANetwork" .=) <$>
                    _rfsRuntimeSettingsUANetwork,
                  ("crcInitialNavigation" .=) <$>
                    _rfsCrcInitialNavigation,
                  ("dropdownPrintSummary" .=) <$>
                    _rfsDropdownPrintSummary,
                  ("varianceDisclaimer" .=) <$> _rfsVarianceDisclaimer,
                  ("runtimeSettingsTitle" .=) <$>
                    _rfsRuntimeSettingsTitle,
                  ("passedAuditsGroupTitle" .=) <$>
                    _rfsPassedAuditsGroupTitle,
                  ("runtimeSettingsDevice" .=) <$>
                    _rfsRuntimeSettingsDevice,
                  ("dropdownViewer" .=) <$> _rfsDropdownViewer,
                  ("footerIssue" .=) <$> _rfsFooterIssue,
                  ("runtimeSettingsAxeVersion" .=) <$>
                    _rfsRuntimeSettingsAxeVersion,
                  ("toplevelWarningsMessage" .=) <$>
                    _rfsToplevelWarningsMessage,
                  ("errorMissingAuditInfo" .=) <$>
                    _rfsErrorMissingAuditInfo,
                  ("runtimeSettingsUrl" .=) <$> _rfsRuntimeSettingsURL,
                  ("runtimeSettingsCPUThrottling" .=) <$>
                    _rfsRuntimeSettingsCPUThrottling,
                  ("thirdPartyResourcesLabel" .=) <$>
                    _rfsThirdPartyResourcesLabel,
                  ("dropdownSaveJSON" .=) <$> _rfsDropdownSaveJSON,
                  ("runtimeSettingsChannel" .=) <$>
                    _rfsRuntimeSettingsChannel,
                  ("crcLongestDurationLabel" .=) <$>
                    _rfsCrcLongestDurationLabel,
                  ("throttlingProvided" .=) <$> _rfsThrottlingProvided,
                  ("dropdownPrintExpanded" .=) <$>
                    _rfsDropdownPrintExpanded,
                  ("runtimeMobileEmulation" .=) <$>
                    _rfsRuntimeMobileEmulation,
                  ("runtimeSettingsFetchTime" .=) <$>
                    _rfsRuntimeSettingsFetchTime,
                  ("warningAuditsGroupTitle" .=) <$>
                    _rfsWarningAuditsGroupTitle,
                  ("snippetExpandButtonLabel" .=) <$>
                    _rfsSnippetExpandButtonLabel,
                  ("runtimeSettingsBenchmark" .=) <$>
                    _rfsRuntimeSettingsBenchmark,
                  ("snippetCollapseButtonLabel" .=) <$>
                    _rfsSnippetCollapseButtonLabel,
                  ("dropdownDarkTheme" .=) <$> _rfsDropdownDarkTheme,
                  ("scorescaleLabel" .=) <$> _rfsScorescaleLabel,
                  ("showRelevantAudits" .=) <$> _rfsShowRelevantAudits,
                  ("dropdownCopyJSON" .=) <$> _rfsDropdownCopyJSON,
                  ("opportunitySavingsColumnLabel" .=) <$>
                    _rfsOpportUnitySavingsColumnLabel,
                  ("errorLabel" .=) <$> _rfsErrorLabel,
                  ("viewTreemapLabel" .=) <$> _rfsViewTreemapLabel,
                  ("lsPerformanceCategoryDescription" .=) <$>
                    _rfsLsPerformanceCategoryDescription,
                  ("auditGroupExpandTooltip" .=) <$>
                    _rfsAuditGroupExpandTooltip,
                  ("runtimeNoEmulation" .=) <$> _rfsRuntimeNoEmulation,
                  ("notApplicableAuditsGroupTitle" .=) <$>
                    _rfsNotApplicableAuditsGroupTitle])

-- | Message containing the performance timing data for the Lighthouse run.
--
-- /See:/ 'timing' smart constructor.
newtype Timing =
  Timing'
    { _tTotal :: Maybe (Textual Double)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Timing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTotal'
timing
    :: Timing
timing = Timing' {_tTotal = Nothing}


-- | The total duration of Lighthouse\'s run.
tTotal :: Lens' Timing (Maybe Double)
tTotal
  = lens _tTotal (\ s a -> s{_tTotal = a}) .
      mapping _Coerce

instance FromJSON Timing where
        parseJSON
          = withObject "Timing"
              (\ o -> Timing' <$> (o .:? "total"))

instance ToJSON Timing where
        toJSON Timing'{..}
          = object (catMaybes [("total" .=) <$> _tTotal])

-- | A CrUX metric object for a single metric and form factor.
--
-- /See:/ 'userPageLoadMetricV5' smart constructor.
data UserPageLoadMetricV5 =
  UserPageLoadMetricV5'
    { _uplmvMedian :: !(Maybe (Textual Int32))
    , _uplmvCategory :: !(Maybe Text)
    , _uplmvFormFactor :: !(Maybe Text)
    , _uplmvMetricId :: !(Maybe Text)
    , _uplmvPercentile :: !(Maybe (Textual Int32))
    , _uplmvDistributions :: !(Maybe [Bucket])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserPageLoadMetricV5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uplmvMedian'
--
-- * 'uplmvCategory'
--
-- * 'uplmvFormFactor'
--
-- * 'uplmvMetricId'
--
-- * 'uplmvPercentile'
--
-- * 'uplmvDistributions'
userPageLoadMetricV5
    :: UserPageLoadMetricV5
userPageLoadMetricV5 =
  UserPageLoadMetricV5'
    { _uplmvMedian = Nothing
    , _uplmvCategory = Nothing
    , _uplmvFormFactor = Nothing
    , _uplmvMetricId = Nothing
    , _uplmvPercentile = Nothing
    , _uplmvDistributions = Nothing
    }


-- | The median number of the metric, in millisecond.
uplmvMedian :: Lens' UserPageLoadMetricV5 (Maybe Int32)
uplmvMedian
  = lens _uplmvMedian (\ s a -> s{_uplmvMedian = a}) .
      mapping _Coerce

-- | The category of the specific time metric.
uplmvCategory :: Lens' UserPageLoadMetricV5 (Maybe Text)
uplmvCategory
  = lens _uplmvCategory
      (\ s a -> s{_uplmvCategory = a})

-- | Identifies the form factor of the metric being collected.
uplmvFormFactor :: Lens' UserPageLoadMetricV5 (Maybe Text)
uplmvFormFactor
  = lens _uplmvFormFactor
      (\ s a -> s{_uplmvFormFactor = a})

-- | Identifies the type of the metric.
uplmvMetricId :: Lens' UserPageLoadMetricV5 (Maybe Text)
uplmvMetricId
  = lens _uplmvMetricId
      (\ s a -> s{_uplmvMetricId = a})

-- | We use this field to store certain percentile value for this metric. For
-- v4, this field contains pc50. For v5, this field contains pc90.
uplmvPercentile :: Lens' UserPageLoadMetricV5 (Maybe Int32)
uplmvPercentile
  = lens _uplmvPercentile
      (\ s a -> s{_uplmvPercentile = a})
      . mapping _Coerce

-- | Metric distributions. Proportions should sum up to 1.
uplmvDistributions :: Lens' UserPageLoadMetricV5 [Bucket]
uplmvDistributions
  = lens _uplmvDistributions
      (\ s a -> s{_uplmvDistributions = a})
      . _Default
      . _Coerce

instance FromJSON UserPageLoadMetricV5 where
        parseJSON
          = withObject "UserPageLoadMetricV5"
              (\ o ->
                 UserPageLoadMetricV5' <$>
                   (o .:? "median") <*> (o .:? "category") <*>
                     (o .:? "formFactor")
                     <*> (o .:? "metricId")
                     <*> (o .:? "percentile")
                     <*> (o .:? "distributions" .!= mempty))

instance ToJSON UserPageLoadMetricV5 where
        toJSON UserPageLoadMetricV5'{..}
          = object
              (catMaybes
                 [("median" .=) <$> _uplmvMedian,
                  ("category" .=) <$> _uplmvCategory,
                  ("formFactor" .=) <$> _uplmvFormFactor,
                  ("metricId" .=) <$> _uplmvMetricId,
                  ("percentile" .=) <$> _uplmvPercentile,
                  ("distributions" .=) <$> _uplmvDistributions])

-- | Message containing the i18n data for the LHR - Version 1.
--
-- /See:/ 'i18n' smart constructor.
newtype I18n =
  I18n'
    { _iRendererFormattedStrings :: Maybe RendererFormattedStrings
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'I18n' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iRendererFormattedStrings'
i18n
    :: I18n
i18n = I18n' {_iRendererFormattedStrings = Nothing}


-- | Internationalized strings that are formatted to the locale in
-- configSettings.
iRendererFormattedStrings :: Lens' I18n (Maybe RendererFormattedStrings)
iRendererFormattedStrings
  = lens _iRendererFormattedStrings
      (\ s a -> s{_iRendererFormattedStrings = a})

instance FromJSON I18n where
        parseJSON
          = withObject "I18n"
              (\ o -> I18n' <$> (o .:? "rendererFormattedStrings"))

instance ToJSON I18n where
        toJSON I18n'{..}
          = object
              (catMaybes
                 [("rendererFormattedStrings" .=) <$>
                    _iRendererFormattedStrings])

-- | Map of audits in the LHR.
--
-- /See:/ 'lighthouseResultV5Audits' smart constructor.
newtype LighthouseResultV5Audits =
  LighthouseResultV5Audits'
    { _lrvaAddtional :: HashMap Text LighthouseAuditResultV5
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LighthouseResultV5Audits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrvaAddtional'
lighthouseResultV5Audits
    :: HashMap Text LighthouseAuditResultV5 -- ^ 'lrvaAddtional'
    -> LighthouseResultV5Audits
lighthouseResultV5Audits pLrvaAddtional_ =
  LighthouseResultV5Audits' {_lrvaAddtional = _Coerce # pLrvaAddtional_}


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
