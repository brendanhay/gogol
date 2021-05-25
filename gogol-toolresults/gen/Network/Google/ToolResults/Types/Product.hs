{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ToolResults.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ToolResults.Types.Product where

import Network.Google.Prelude
import Network.Google.ToolResults.Types.Sum

-- | Failed to find the launcher activity of an app.
--
-- /See:/ 'launcherActivityNotFound' smart constructor.
data LauncherActivityNotFound =
  LauncherActivityNotFound'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LauncherActivityNotFound' with the minimum fields required to make a request.
--
launcherActivityNotFound
    :: LauncherActivityNotFound
launcherActivityNotFound = LauncherActivityNotFound'


instance FromJSON LauncherActivityNotFound where
        parseJSON
          = withObject "LauncherActivityNotFound"
              (\ o -> pure LauncherActivityNotFound')

instance ToJSON LauncherActivityNotFound where
        toJSON = const emptyObject

-- | Additional details for a native crash.
--
-- /See:/ 'nATiveCrash' smart constructor.
newtype NATiveCrash =
  NATiveCrash'
    { _natcStackTrace :: Maybe StackTrace
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NATiveCrash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'natcStackTrace'
nATiveCrash
    :: NATiveCrash
nATiveCrash = NATiveCrash' {_natcStackTrace = Nothing}


-- | The stack trace of the native crash. Optional.
natcStackTrace :: Lens' NATiveCrash (Maybe StackTrace)
natcStackTrace
  = lens _natcStackTrace
      (\ s a -> s{_natcStackTrace = a})

instance FromJSON NATiveCrash where
        parseJSON
          = withObject "NATiveCrash"
              (\ o -> NATiveCrash' <$> (o .:? "stackTrace"))

instance ToJSON NATiveCrash where
        toJSON NATiveCrash'{..}
          = object
              (catMaybes [("stackTrace" .=) <$> _natcStackTrace])

-- | A warning that Robo encountered a screen that has overlapping clickable
-- elements; this may indicate a potential UI issue.
--
-- /See:/ 'overlAppingUIElements' smart constructor.
data OverlAppingUIElements =
  OverlAppingUIElements'
    { _oauieResourceName :: !(Maybe [Text])
    , _oauieScreenId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OverlAppingUIElements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oauieResourceName'
--
-- * 'oauieScreenId'
overlAppingUIElements
    :: OverlAppingUIElements
overlAppingUIElements =
  OverlAppingUIElements'
    {_oauieResourceName = Nothing, _oauieScreenId = Nothing}


-- | Resource names of the overlapping screen elements
oauieResourceName :: Lens' OverlAppingUIElements [Text]
oauieResourceName
  = lens _oauieResourceName
      (\ s a -> s{_oauieResourceName = a})
      . _Default
      . _Coerce

-- | The screen id of the elements
oauieScreenId :: Lens' OverlAppingUIElements (Maybe Text)
oauieScreenId
  = lens _oauieScreenId
      (\ s a -> s{_oauieScreenId = a})

instance FromJSON OverlAppingUIElements where
        parseJSON
          = withObject "OverlAppingUIElements"
              (\ o ->
                 OverlAppingUIElements' <$>
                   (o .:? "resourceName" .!= mempty) <*>
                     (o .:? "screenId"))

instance ToJSON OverlAppingUIElements where
        toJSON OverlAppingUIElements'{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _oauieResourceName,
                  ("screenId" .=) <$> _oauieScreenId])

-- | Execution stats for a user-provided Robo script.
--
-- /See:/ 'roboScriptExecution' smart constructor.
data RoboScriptExecution =
  RoboScriptExecution'
    { _rseTotalActions :: !(Maybe (Textual Int32))
    , _rseSuccessfulActions :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoboScriptExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rseTotalActions'
--
-- * 'rseSuccessfulActions'
roboScriptExecution
    :: RoboScriptExecution
roboScriptExecution =
  RoboScriptExecution'
    {_rseTotalActions = Nothing, _rseSuccessfulActions = Nothing}


-- | The total number of actions in the Robo script.
rseTotalActions :: Lens' RoboScriptExecution (Maybe Int32)
rseTotalActions
  = lens _rseTotalActions
      (\ s a -> s{_rseTotalActions = a})
      . mapping _Coerce

-- | The number of Robo script actions executed successfully.
rseSuccessfulActions :: Lens' RoboScriptExecution (Maybe Int32)
rseSuccessfulActions
  = lens _rseSuccessfulActions
      (\ s a -> s{_rseSuccessfulActions = a})
      . mapping _Coerce

instance FromJSON RoboScriptExecution where
        parseJSON
          = withObject "RoboScriptExecution"
              (\ o ->
                 RoboScriptExecution' <$>
                   (o .:? "totalActions") <*>
                     (o .:? "successfulActions"))

instance ToJSON RoboScriptExecution where
        toJSON RoboScriptExecution'{..}
          = object
              (catMaybes
                 [("totalActions" .=) <$> _rseTotalActions,
                  ("successfulActions" .=) <$> _rseSuccessfulActions])

-- | Additional details for an ANR crash.
--
-- /See:/ 'aNR' smart constructor.
newtype ANR =
  ANR'
    { _aStackTrace :: Maybe StackTrace
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ANR' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aStackTrace'
aNR
    :: ANR
aNR = ANR' {_aStackTrace = Nothing}


-- | The stack trace of the ANR crash. Optional.
aStackTrace :: Lens' ANR (Maybe StackTrace)
aStackTrace
  = lens _aStackTrace (\ s a -> s{_aStackTrace = a})

instance FromJSON ANR where
        parseJSON
          = withObject "ANR"
              (\ o -> ANR' <$> (o .:? "stackTrace"))

instance ToJSON ANR where
        toJSON ANR'{..}
          = object
              (catMaybes [("stackTrace" .=) <$> _aStackTrace])

-- | Additional details of in-app purchases encountered during the crawl.
--
-- /See:/ 'inAppPurchasesFound' smart constructor.
data InAppPurchasesFound =
  InAppPurchasesFound'
    { _iapfInAppPurchasesFlowsExplored :: !(Maybe (Textual Int32))
    , _iapfInAppPurchasesFlowsStarted :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppPurchasesFound' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapfInAppPurchasesFlowsExplored'
--
-- * 'iapfInAppPurchasesFlowsStarted'
inAppPurchasesFound
    :: InAppPurchasesFound
inAppPurchasesFound =
  InAppPurchasesFound'
    { _iapfInAppPurchasesFlowsExplored = Nothing
    , _iapfInAppPurchasesFlowsStarted = Nothing
    }


-- | The total number of in-app purchases flows explored: how many times the
-- robo tries to buy a SKU.
iapfInAppPurchasesFlowsExplored :: Lens' InAppPurchasesFound (Maybe Int32)
iapfInAppPurchasesFlowsExplored
  = lens _iapfInAppPurchasesFlowsExplored
      (\ s a -> s{_iapfInAppPurchasesFlowsExplored = a})
      . mapping _Coerce

-- | The total number of in-app purchases flows started.
iapfInAppPurchasesFlowsStarted :: Lens' InAppPurchasesFound (Maybe Int32)
iapfInAppPurchasesFlowsStarted
  = lens _iapfInAppPurchasesFlowsStarted
      (\ s a -> s{_iapfInAppPurchasesFlowsStarted = a})
      . mapping _Coerce

instance FromJSON InAppPurchasesFound where
        parseJSON
          = withObject "InAppPurchasesFound"
              (\ o ->
                 InAppPurchasesFound' <$>
                   (o .:? "inAppPurchasesFlowsExplored") <*>
                     (o .:? "inAppPurchasesFlowsStarted"))

instance ToJSON InAppPurchasesFound where
        toJSON InAppPurchasesFound'{..}
          = object
              (catMaybes
                 [("inAppPurchasesFlowsExplored" .=) <$>
                    _iapfInAppPurchasesFlowsExplored,
                  ("inAppPurchasesFlowsStarted" .=) <$>
                    _iapfInAppPurchasesFlowsStarted])

-- | Additional details about encountered screens with elements that are not
-- Android UI widgets.
--
-- /See:/ 'encounteredNonAndroidUiWidgetScreen' smart constructor.
data EncounteredNonAndroidUiWidgetScreen =
  EncounteredNonAndroidUiWidgetScreen'
    { _enauwsDistinctScreens :: !(Maybe (Textual Int32))
    , _enauwsScreenIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncounteredNonAndroidUiWidgetScreen' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'enauwsDistinctScreens'
--
-- * 'enauwsScreenIds'
encounteredNonAndroidUiWidgetScreen
    :: EncounteredNonAndroidUiWidgetScreen
encounteredNonAndroidUiWidgetScreen =
  EncounteredNonAndroidUiWidgetScreen'
    {_enauwsDistinctScreens = Nothing, _enauwsScreenIds = Nothing}


-- | Number of encountered distinct screens with non Android UI widgets.
enauwsDistinctScreens :: Lens' EncounteredNonAndroidUiWidgetScreen (Maybe Int32)
enauwsDistinctScreens
  = lens _enauwsDistinctScreens
      (\ s a -> s{_enauwsDistinctScreens = a})
      . mapping _Coerce

-- | Subset of screens which contain non Android UI widgets.
enauwsScreenIds :: Lens' EncounteredNonAndroidUiWidgetScreen [Text]
enauwsScreenIds
  = lens _enauwsScreenIds
      (\ s a -> s{_enauwsScreenIds = a})
      . _Default
      . _Coerce

instance FromJSON EncounteredNonAndroidUiWidgetScreen
         where
        parseJSON
          = withObject "EncounteredNonAndroidUiWidgetScreen"
              (\ o ->
                 EncounteredNonAndroidUiWidgetScreen' <$>
                   (o .:? "distinctScreens") <*>
                     (o .:? "screenIds" .!= mempty))

instance ToJSON EncounteredNonAndroidUiWidgetScreen
         where
        toJSON EncounteredNonAndroidUiWidgetScreen'{..}
          = object
              (catMaybes
                 [("distinctScreens" .=) <$> _enauwsDistinctScreens,
                  ("screenIds" .=) <$> _enauwsScreenIds])

-- | User provided intent failed to resolve to an activity.
--
-- /See:/ 'startActivityNotFound' smart constructor.
data StartActivityNotFound =
  StartActivityNotFound'
    { _sanfURI :: !(Maybe Text)
    , _sanfAction :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartActivityNotFound' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sanfURI'
--
-- * 'sanfAction'
startActivityNotFound
    :: StartActivityNotFound
startActivityNotFound =
  StartActivityNotFound' {_sanfURI = Nothing, _sanfAction = Nothing}


sanfURI :: Lens' StartActivityNotFound (Maybe Text)
sanfURI = lens _sanfURI (\ s a -> s{_sanfURI = a})

sanfAction :: Lens' StartActivityNotFound (Maybe Text)
sanfAction
  = lens _sanfAction (\ s a -> s{_sanfAction = a})

instance FromJSON StartActivityNotFound where
        parseJSON
          = withObject "StartActivityNotFound"
              (\ o ->
                 StartActivityNotFound' <$>
                   (o .:? "uri") <*> (o .:? "action"))

instance ToJSON StartActivityNotFound where
        toJSON StartActivityNotFound'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _sanfURI,
                  ("action" .=) <$> _sanfAction])

-- | A suggestion to use deep links for a Robo run.
--
-- /See:/ 'availableDeepLinks' smart constructor.
data AvailableDeepLinks =
  AvailableDeepLinks'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AvailableDeepLinks' with the minimum fields required to make a request.
--
availableDeepLinks
    :: AvailableDeepLinks
availableDeepLinks = AvailableDeepLinks'


instance FromJSON AvailableDeepLinks where
        parseJSON
          = withObject "AvailableDeepLinks"
              (\ o -> pure AvailableDeepLinks')

instance ToJSON AvailableDeepLinks where
        toJSON = const emptyObject

-- | Additional details for an iOS app crash.
--
-- /See:/ 'iosAppCrashed' smart constructor.
newtype IosAppCrashed =
  IosAppCrashed'
    { _iacStackTrace :: Maybe StackTrace
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IosAppCrashed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iacStackTrace'
iosAppCrashed
    :: IosAppCrashed
iosAppCrashed = IosAppCrashed' {_iacStackTrace = Nothing}


-- | The stack trace, if one is available. Optional.
iacStackTrace :: Lens' IosAppCrashed (Maybe StackTrace)
iacStackTrace
  = lens _iacStackTrace
      (\ s a -> s{_iacStackTrace = a})

instance FromJSON IosAppCrashed where
        parseJSON
          = withObject "IosAppCrashed"
              (\ o -> IosAppCrashed' <$> (o .:? "stackTrace"))

instance ToJSON IosAppCrashed where
        toJSON IosAppCrashed'{..}
          = object
              (catMaybes [("stackTrace" .=) <$> _iacStackTrace])

-- | This insight is a recommendation to upgrade a given library to the
-- specified version, in order to avoid dependencies on non-SDK APIs.
--
-- /See:/ 'upgradeInsight' smart constructor.
data UpgradeInsight =
  UpgradeInsight'
    { _uiPackageName :: !(Maybe Text)
    , _uiUpgradeToVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpgradeInsight' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiPackageName'
--
-- * 'uiUpgradeToVersion'
upgradeInsight
    :: UpgradeInsight
upgradeInsight =
  UpgradeInsight' {_uiPackageName = Nothing, _uiUpgradeToVersion = Nothing}


-- | The name of the package to be upgraded.
uiPackageName :: Lens' UpgradeInsight (Maybe Text)
uiPackageName
  = lens _uiPackageName
      (\ s a -> s{_uiPackageName = a})

-- | The suggested version to upgrade to. Optional: In case we are not sure
-- which version solves this problem
uiUpgradeToVersion :: Lens' UpgradeInsight (Maybe Text)
uiUpgradeToVersion
  = lens _uiUpgradeToVersion
      (\ s a -> s{_uiUpgradeToVersion = a})

instance FromJSON UpgradeInsight where
        parseJSON
          = withObject "UpgradeInsight"
              (\ o ->
                 UpgradeInsight' <$>
                   (o .:? "packageName") <*> (o .:? "upgradeToVersion"))

instance ToJSON UpgradeInsight where
        toJSON UpgradeInsight'{..}
          = object
              (catMaybes
                 [("packageName" .=) <$> _uiPackageName,
                  ("upgradeToVersion" .=) <$> _uiUpgradeToVersion])

-- | A notification that Robo performed some monkey actions.
--
-- /See:/ 'performedMonkeyActions' smart constructor.
newtype PerformedMonkeyActions =
  PerformedMonkeyActions'
    { _pmaTotalActions :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PerformedMonkeyActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmaTotalActions'
performedMonkeyActions
    :: PerformedMonkeyActions
performedMonkeyActions = PerformedMonkeyActions' {_pmaTotalActions = Nothing}


-- | The total number of monkey actions performed during the crawl.
pmaTotalActions :: Lens' PerformedMonkeyActions (Maybe Int32)
pmaTotalActions
  = lens _pmaTotalActions
      (\ s a -> s{_pmaTotalActions = a})
      . mapping _Coerce

instance FromJSON PerformedMonkeyActions where
        parseJSON
          = withObject "PerformedMonkeyActions"
              (\ o ->
                 PerformedMonkeyActions' <$> (o .:? "totalActions"))

instance ToJSON PerformedMonkeyActions where
        toJSON PerformedMonkeyActions'{..}
          = object
              (catMaybes
                 [("totalActions" .=) <$> _pmaTotalActions])

-- | Contains a summary and examples of non-sdk API usage violations.
--
-- /See:/ 'nonSdkAPIUsageViolationReport' smart constructor.
data NonSdkAPIUsageViolationReport =
  NonSdkAPIUsageViolationReport'
    { _nsauvrMinSdkVersion :: !(Maybe (Textual Int32))
    , _nsauvrTargetSdkVersion :: !(Maybe (Textual Int32))
    , _nsauvrUniqueAPIs :: !(Maybe (Textual Int32))
    , _nsauvrExampleAPIs :: !(Maybe [NonSdkAPI])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NonSdkAPIUsageViolationReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsauvrMinSdkVersion'
--
-- * 'nsauvrTargetSdkVersion'
--
-- * 'nsauvrUniqueAPIs'
--
-- * 'nsauvrExampleAPIs'
nonSdkAPIUsageViolationReport
    :: NonSdkAPIUsageViolationReport
nonSdkAPIUsageViolationReport =
  NonSdkAPIUsageViolationReport'
    { _nsauvrMinSdkVersion = Nothing
    , _nsauvrTargetSdkVersion = Nothing
    , _nsauvrUniqueAPIs = Nothing
    , _nsauvrExampleAPIs = Nothing
    }


-- | Minimum API level required for the application to run.
nsauvrMinSdkVersion :: Lens' NonSdkAPIUsageViolationReport (Maybe Int32)
nsauvrMinSdkVersion
  = lens _nsauvrMinSdkVersion
      (\ s a -> s{_nsauvrMinSdkVersion = a})
      . mapping _Coerce

-- | Specifies the API Level on which the application is designed to run.
nsauvrTargetSdkVersion :: Lens' NonSdkAPIUsageViolationReport (Maybe Int32)
nsauvrTargetSdkVersion
  = lens _nsauvrTargetSdkVersion
      (\ s a -> s{_nsauvrTargetSdkVersion = a})
      . mapping _Coerce

-- | Total number of unique Non-SDK API\'s accessed.
nsauvrUniqueAPIs :: Lens' NonSdkAPIUsageViolationReport (Maybe Int32)
nsauvrUniqueAPIs
  = lens _nsauvrUniqueAPIs
      (\ s a -> s{_nsauvrUniqueAPIs = a})
      . mapping _Coerce

-- | Examples of the detected API usages.
nsauvrExampleAPIs :: Lens' NonSdkAPIUsageViolationReport [NonSdkAPI]
nsauvrExampleAPIs
  = lens _nsauvrExampleAPIs
      (\ s a -> s{_nsauvrExampleAPIs = a})
      . _Default
      . _Coerce

instance FromJSON NonSdkAPIUsageViolationReport where
        parseJSON
          = withObject "NonSdkAPIUsageViolationReport"
              (\ o ->
                 NonSdkAPIUsageViolationReport' <$>
                   (o .:? "minSdkVersion") <*>
                     (o .:? "targetSdkVersion")
                     <*> (o .:? "uniqueApis")
                     <*> (o .:? "exampleApis" .!= mempty))

instance ToJSON NonSdkAPIUsageViolationReport where
        toJSON NonSdkAPIUsageViolationReport'{..}
          = object
              (catMaybes
                 [("minSdkVersion" .=) <$> _nsauvrMinSdkVersion,
                  ("targetSdkVersion" .=) <$> _nsauvrTargetSdkVersion,
                  ("uniqueApis" .=) <$> _nsauvrUniqueAPIs,
                  ("exampleApis" .=) <$> _nsauvrExampleAPIs])

-- | This insight indicates that the hidden API usage originates from a
-- Google-provided library. Users need not take any action.
--
-- /See:/ 'pendingGoogleUpdateInsight' smart constructor.
newtype PendingGoogleUpdateInsight =
  PendingGoogleUpdateInsight'
    { _pguiNameOfGoogleLibrary :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PendingGoogleUpdateInsight' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pguiNameOfGoogleLibrary'
pendingGoogleUpdateInsight
    :: PendingGoogleUpdateInsight
pendingGoogleUpdateInsight =
  PendingGoogleUpdateInsight' {_pguiNameOfGoogleLibrary = Nothing}


-- | The name of the Google-provided library with the non-SDK API dependency.
pguiNameOfGoogleLibrary :: Lens' PendingGoogleUpdateInsight (Maybe Text)
pguiNameOfGoogleLibrary
  = lens _pguiNameOfGoogleLibrary
      (\ s a -> s{_pguiNameOfGoogleLibrary = a})

instance FromJSON PendingGoogleUpdateInsight where
        parseJSON
          = withObject "PendingGoogleUpdateInsight"
              (\ o ->
                 PendingGoogleUpdateInsight' <$>
                   (o .:? "nameOfGoogleLibrary"))

instance ToJSON PendingGoogleUpdateInsight where
        toJSON PendingGoogleUpdateInsight'{..}
          = object
              (catMaybes
                 [("nameOfGoogleLibrary" .=) <$>
                    _pguiNameOfGoogleLibrary])

-- | A stacktrace.
--
-- /See:/ 'stackTrace' smart constructor.
newtype StackTrace =
  StackTrace'
    { _stException :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StackTrace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stException'
stackTrace
    :: StackTrace
stackTrace = StackTrace' {_stException = Nothing}


-- | The stack trace message. Required
stException :: Lens' StackTrace (Maybe Text)
stException
  = lens _stException (\ s a -> s{_stException = a})

instance FromJSON StackTrace where
        parseJSON
          = withObject "StackTrace"
              (\ o -> StackTrace' <$> (o .:? "exception"))

instance ToJSON StackTrace where
        toJSON StackTrace'{..}
          = object
              (catMaybes [("exception" .=) <$> _stException])

-- | Additional details for a non-sdk API usage violation.
--
-- /See:/ 'nonSdkAPIUsageViolation' smart constructor.
data NonSdkAPIUsageViolation =
  NonSdkAPIUsageViolation'
    { _nsauvAPISignatures :: !(Maybe [Text])
    , _nsauvUniqueAPIs :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NonSdkAPIUsageViolation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsauvAPISignatures'
--
-- * 'nsauvUniqueAPIs'
nonSdkAPIUsageViolation
    :: NonSdkAPIUsageViolation
nonSdkAPIUsageViolation =
  NonSdkAPIUsageViolation'
    {_nsauvAPISignatures = Nothing, _nsauvUniqueAPIs = Nothing}


-- | Signatures of a subset of those hidden API\'s.
nsauvAPISignatures :: Lens' NonSdkAPIUsageViolation [Text]
nsauvAPISignatures
  = lens _nsauvAPISignatures
      (\ s a -> s{_nsauvAPISignatures = a})
      . _Default
      . _Coerce

-- | Total number of unique hidden API\'s accessed.
nsauvUniqueAPIs :: Lens' NonSdkAPIUsageViolation (Maybe Int32)
nsauvUniqueAPIs
  = lens _nsauvUniqueAPIs
      (\ s a -> s{_nsauvUniqueAPIs = a})
      . mapping _Coerce

instance FromJSON NonSdkAPIUsageViolation where
        parseJSON
          = withObject "NonSdkAPIUsageViolation"
              (\ o ->
                 NonSdkAPIUsageViolation' <$>
                   (o .:? "apiSignatures" .!= mempty) <*>
                     (o .:? "uniqueApis"))

instance ToJSON NonSdkAPIUsageViolation where
        toJSON NonSdkAPIUsageViolation'{..}
          = object
              (catMaybes
                 [("apiSignatures" .=) <$> _nsauvAPISignatures,
                  ("uniqueApis" .=) <$> _nsauvUniqueAPIs])

-- | A warning that the screen hierarchy is deeper than the recommended
-- threshold.
--
-- /See:/ 'uIElementTooDeep' smart constructor.
data UIElementTooDeep =
  UIElementTooDeep'
    { _uietdScreenStateId :: !(Maybe Text)
    , _uietdDepth :: !(Maybe (Textual Int32))
    , _uietdScreenId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UIElementTooDeep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uietdScreenStateId'
--
-- * 'uietdDepth'
--
-- * 'uietdScreenId'
uIElementTooDeep
    :: UIElementTooDeep
uIElementTooDeep =
  UIElementTooDeep'
    { _uietdScreenStateId = Nothing
    , _uietdDepth = Nothing
    , _uietdScreenId = Nothing
    }


-- | The screen state id of the element
uietdScreenStateId :: Lens' UIElementTooDeep (Maybe Text)
uietdScreenStateId
  = lens _uietdScreenStateId
      (\ s a -> s{_uietdScreenStateId = a})

-- | The depth of the screen element
uietdDepth :: Lens' UIElementTooDeep (Maybe Int32)
uietdDepth
  = lens _uietdDepth (\ s a -> s{_uietdDepth = a}) .
      mapping _Coerce

-- | The screen id of the element
uietdScreenId :: Lens' UIElementTooDeep (Maybe Text)
uietdScreenId
  = lens _uietdScreenId
      (\ s a -> s{_uietdScreenId = a})

instance FromJSON UIElementTooDeep where
        parseJSON
          = withObject "UIElementTooDeep"
              (\ o ->
                 UIElementTooDeep' <$>
                   (o .:? "screenStateId") <*> (o .:? "depth") <*>
                     (o .:? "screenId"))

instance ToJSON UIElementTooDeep where
        toJSON UIElementTooDeep'{..}
          = object
              (catMaybes
                 [("screenStateId" .=) <$> _uietdScreenStateId,
                  ("depth" .=) <$> _uietdDepth,
                  ("screenId" .=) <$> _uietdScreenId])

-- | A notification that Robo signed in with Google.
--
-- /See:/ 'performedGoogleLogin' smart constructor.
data PerformedGoogleLogin =
  PerformedGoogleLogin'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PerformedGoogleLogin' with the minimum fields required to make a request.
--
performedGoogleLogin
    :: PerformedGoogleLogin
performedGoogleLogin = PerformedGoogleLogin'


instance FromJSON PerformedGoogleLogin where
        parseJSON
          = withObject "PerformedGoogleLogin"
              (\ o -> pure PerformedGoogleLogin')

instance ToJSON PerformedGoogleLogin where
        toJSON = const emptyObject

-- | Non-SDK API insights (to address debugging solutions).
--
-- /See:/ 'nonSdkAPIInsight' smart constructor.
data NonSdkAPIInsight =
  NonSdkAPIInsight'
    { _nsaiUpgradeInsight :: !(Maybe UpgradeInsight)
    , _nsaiPendingGoogleUpdateInsight :: !(Maybe PendingGoogleUpdateInsight)
    , _nsaiExampleTraceMessages :: !(Maybe [Text])
    , _nsaiMatcherId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NonSdkAPIInsight' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsaiUpgradeInsight'
--
-- * 'nsaiPendingGoogleUpdateInsight'
--
-- * 'nsaiExampleTraceMessages'
--
-- * 'nsaiMatcherId'
nonSdkAPIInsight
    :: NonSdkAPIInsight
nonSdkAPIInsight =
  NonSdkAPIInsight'
    { _nsaiUpgradeInsight = Nothing
    , _nsaiPendingGoogleUpdateInsight = Nothing
    , _nsaiExampleTraceMessages = Nothing
    , _nsaiMatcherId = Nothing
    }


-- | An insight indicating that the hidden API usage originates from the use
-- of a library that needs to be upgraded.
nsaiUpgradeInsight :: Lens' NonSdkAPIInsight (Maybe UpgradeInsight)
nsaiUpgradeInsight
  = lens _nsaiUpgradeInsight
      (\ s a -> s{_nsaiUpgradeInsight = a})

-- | An insight indicating that the hidden API usage originates from a
-- Google-provided library.
nsaiPendingGoogleUpdateInsight :: Lens' NonSdkAPIInsight (Maybe PendingGoogleUpdateInsight)
nsaiPendingGoogleUpdateInsight
  = lens _nsaiPendingGoogleUpdateInsight
      (\ s a -> s{_nsaiPendingGoogleUpdateInsight = a})

-- | Optional sample stack traces, for which this insight applies (there
-- should be at least one).
nsaiExampleTraceMessages :: Lens' NonSdkAPIInsight [Text]
nsaiExampleTraceMessages
  = lens _nsaiExampleTraceMessages
      (\ s a -> s{_nsaiExampleTraceMessages = a})
      . _Default
      . _Coerce

-- | A unique ID, to be used for determining the effectiveness of this
-- particular insight in the context of a matcher. (required)
nsaiMatcherId :: Lens' NonSdkAPIInsight (Maybe Text)
nsaiMatcherId
  = lens _nsaiMatcherId
      (\ s a -> s{_nsaiMatcherId = a})

instance FromJSON NonSdkAPIInsight where
        parseJSON
          = withObject "NonSdkAPIInsight"
              (\ o ->
                 NonSdkAPIInsight' <$>
                   (o .:? "upgradeInsight") <*>
                     (o .:? "pendingGoogleUpdateInsight")
                     <*> (o .:? "exampleTraceMessages" .!= mempty)
                     <*> (o .:? "matcherId"))

instance ToJSON NonSdkAPIInsight where
        toJSON NonSdkAPIInsight'{..}
          = object
              (catMaybes
                 [("upgradeInsight" .=) <$> _nsaiUpgradeInsight,
                  ("pendingGoogleUpdateInsight" .=) <$>
                    _nsaiPendingGoogleUpdateInsight,
                  ("exampleTraceMessages" .=) <$>
                    _nsaiExampleTraceMessages,
                  ("matcherId" .=) <$> _nsaiMatcherId])

-- | Additional details of a used Robo directive with an ignore action. Note:
-- This is a different scenario than unused directive.
--
-- /See:/ 'usedRoboIgnoreDirective' smart constructor.
newtype UsedRoboIgnoreDirective =
  UsedRoboIgnoreDirective'
    { _uridResourceName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsedRoboIgnoreDirective' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uridResourceName'
usedRoboIgnoreDirective
    :: UsedRoboIgnoreDirective
usedRoboIgnoreDirective = UsedRoboIgnoreDirective' {_uridResourceName = Nothing}


-- | The name of the resource that was ignored.
uridResourceName :: Lens' UsedRoboIgnoreDirective (Maybe Text)
uridResourceName
  = lens _uridResourceName
      (\ s a -> s{_uridResourceName = a})

instance FromJSON UsedRoboIgnoreDirective where
        parseJSON
          = withObject "UsedRoboIgnoreDirective"
              (\ o ->
                 UsedRoboIgnoreDirective' <$> (o .:? "resourceName"))

instance ToJSON UsedRoboIgnoreDirective where
        toJSON UsedRoboIgnoreDirective'{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _uridResourceName])

-- | Additional details of a used Robo directive.
--
-- /See:/ 'usedRoboDirective' smart constructor.
newtype UsedRoboDirective =
  UsedRoboDirective'
    { _urdResourceName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsedRoboDirective' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdResourceName'
usedRoboDirective
    :: UsedRoboDirective
usedRoboDirective = UsedRoboDirective' {_urdResourceName = Nothing}


-- | The name of the resource that was used.
urdResourceName :: Lens' UsedRoboDirective (Maybe Text)
urdResourceName
  = lens _urdResourceName
      (\ s a -> s{_urdResourceName = a})

instance FromJSON UsedRoboDirective where
        parseJSON
          = withObject "UsedRoboDirective"
              (\ o ->
                 UsedRoboDirective' <$> (o .:? "resourceName"))

instance ToJSON UsedRoboDirective where
        toJSON UsedRoboDirective'{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _urdResourceName])

-- | Default unspecified warning.
--
-- /See:/ 'unspecifiedWarning' smart constructor.
data UnspecifiedWarning =
  UnspecifiedWarning'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnspecifiedWarning' with the minimum fields required to make a request.
--
unspecifiedWarning
    :: UnspecifiedWarning
unspecifiedWarning = UnspecifiedWarning'


instance FromJSON UnspecifiedWarning where
        parseJSON
          = withObject "UnspecifiedWarning"
              (\ o -> pure UnspecifiedWarning')

instance ToJSON UnspecifiedWarning where
        toJSON = const emptyObject

-- | Additional details of an unused robodirective.
--
-- /See:/ 'unusedRoboDirective' smart constructor.
newtype UnusedRoboDirective =
  UnusedRoboDirective'
    { _uResourceName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnusedRoboDirective' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uResourceName'
unusedRoboDirective
    :: UnusedRoboDirective
unusedRoboDirective = UnusedRoboDirective' {_uResourceName = Nothing}


-- | The name of the resource that was unused.
uResourceName :: Lens' UnusedRoboDirective (Maybe Text)
uResourceName
  = lens _uResourceName
      (\ s a -> s{_uResourceName = a})

instance FromJSON UnusedRoboDirective where
        parseJSON
          = withObject "UnusedRoboDirective"
              (\ o ->
                 UnusedRoboDirective' <$> (o .:? "resourceName"))

instance ToJSON UnusedRoboDirective where
        toJSON UnusedRoboDirective'{..}
          = object
              (catMaybes [("resourceName" .=) <$> _uResourceName])

-- | Crash dialog was detected during the test execution
--
-- /See:/ 'crashDialogError' smart constructor.
newtype CrashDialogError =
  CrashDialogError'
    { _cdeCrashPackage :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CrashDialogError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdeCrashPackage'
crashDialogError
    :: CrashDialogError
crashDialogError = CrashDialogError' {_cdeCrashPackage = Nothing}


-- | The name of the package that caused the dialog.
cdeCrashPackage :: Lens' CrashDialogError (Maybe Text)
cdeCrashPackage
  = lens _cdeCrashPackage
      (\ s a -> s{_cdeCrashPackage = a})

instance FromJSON CrashDialogError where
        parseJSON
          = withObject "CrashDialogError"
              (\ o -> CrashDialogError' <$> (o .:? "crashPackage"))

instance ToJSON CrashDialogError where
        toJSON CrashDialogError'{..}
          = object
              (catMaybes
                 [("crashPackage" .=) <$> _cdeCrashPackage])

-- | A non-sdk API and examples of it being called along with other metadata
-- See
-- https:\/\/developer.android.com\/distribute\/best-practices\/develop\/restrictions-non-sdk-interfaces
--
-- /See:/ 'nonSdkAPI' smart constructor.
data NonSdkAPI =
  NonSdkAPI'
    { _nsaList :: !(Maybe NonSdkAPIList)
    , _nsaInsights :: !(Maybe [NonSdkAPIInsight])
    , _nsaAPISignature :: !(Maybe Text)
    , _nsaExampleStackTraces :: !(Maybe [Text])
    , _nsaInvocationCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NonSdkAPI' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsaList'
--
-- * 'nsaInsights'
--
-- * 'nsaAPISignature'
--
-- * 'nsaExampleStackTraces'
--
-- * 'nsaInvocationCount'
nonSdkAPI
    :: NonSdkAPI
nonSdkAPI =
  NonSdkAPI'
    { _nsaList = Nothing
    , _nsaInsights = Nothing
    , _nsaAPISignature = Nothing
    , _nsaExampleStackTraces = Nothing
    , _nsaInvocationCount = Nothing
    }


-- | Which list this API appears on
nsaList :: Lens' NonSdkAPI (Maybe NonSdkAPIList)
nsaList = lens _nsaList (\ s a -> s{_nsaList = a})

-- | Optional debugging insights for non-SDK API violations.
nsaInsights :: Lens' NonSdkAPI [NonSdkAPIInsight]
nsaInsights
  = lens _nsaInsights (\ s a -> s{_nsaInsights = a}) .
      _Default
      . _Coerce

-- | The signature of the Non-SDK API
nsaAPISignature :: Lens' NonSdkAPI (Maybe Text)
nsaAPISignature
  = lens _nsaAPISignature
      (\ s a -> s{_nsaAPISignature = a})

-- | Example stack traces of this API being called.
nsaExampleStackTraces :: Lens' NonSdkAPI [Text]
nsaExampleStackTraces
  = lens _nsaExampleStackTraces
      (\ s a -> s{_nsaExampleStackTraces = a})
      . _Default
      . _Coerce

-- | The total number of times this API was observed to have been called.
nsaInvocationCount :: Lens' NonSdkAPI (Maybe Int32)
nsaInvocationCount
  = lens _nsaInvocationCount
      (\ s a -> s{_nsaInvocationCount = a})
      . mapping _Coerce

instance FromJSON NonSdkAPI where
        parseJSON
          = withObject "NonSdkAPI"
              (\ o ->
                 NonSdkAPI' <$>
                   (o .:? "list") <*> (o .:? "insights" .!= mempty) <*>
                     (o .:? "apiSignature")
                     <*> (o .:? "exampleStackTraces" .!= mempty)
                     <*> (o .:? "invocationCount"))

instance ToJSON NonSdkAPI where
        toJSON NonSdkAPI'{..}
          = object
              (catMaybes
                 [("list" .=) <$> _nsaList,
                  ("insights" .=) <$> _nsaInsights,
                  ("apiSignature" .=) <$> _nsaAPISignature,
                  ("exampleStackTraces" .=) <$> _nsaExampleStackTraces,
                  ("invocationCount" .=) <$> _nsaInvocationCount])

-- | A warning that Robo did not crawl potentially important parts of the
-- app.
--
-- /See:/ 'insufficientCoverage' smart constructor.
data InsufficientCoverage =
  InsufficientCoverage'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsufficientCoverage' with the minimum fields required to make a request.
--
insufficientCoverage
    :: InsufficientCoverage
insufficientCoverage = InsufficientCoverage'


instance FromJSON InsufficientCoverage where
        parseJSON
          = withObject "InsufficientCoverage"
              (\ o -> pure InsufficientCoverage')

instance ToJSON InsufficientCoverage where
        toJSON = const emptyObject

-- | A warning that Robo encountered a screen that was mostly blank; this may
-- indicate a problem with the app.
--
-- /See:/ 'blankScreen' smart constructor.
newtype BlankScreen =
  BlankScreen'
    { _bsScreenId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlankScreen' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsScreenId'
blankScreen
    :: BlankScreen
blankScreen = BlankScreen' {_bsScreenId = Nothing}


-- | The screen id of the element
bsScreenId :: Lens' BlankScreen (Maybe Text)
bsScreenId
  = lens _bsScreenId (\ s a -> s{_bsScreenId = a})

instance FromJSON BlankScreen where
        parseJSON
          = withObject "BlankScreen"
              (\ o -> BlankScreen' <$> (o .:? "screenId"))

instance ToJSON BlankScreen where
        toJSON BlankScreen'{..}
          = object
              (catMaybes [("screenId" .=) <$> _bsScreenId])

-- | Failed to install the APK.
--
-- /See:/ 'failedToInstall' smart constructor.
data FailedToInstall =
  FailedToInstall'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailedToInstall' with the minimum fields required to make a request.
--
failedToInstall
    :: FailedToInstall
failedToInstall = FailedToInstall'


instance FromJSON FailedToInstall where
        parseJSON
          = withObject "FailedToInstall"
              (\ o -> pure FailedToInstall')

instance ToJSON FailedToInstall where
        toJSON = const emptyObject

-- | Additional details for a fatal exception.
--
-- /See:/ 'fatalException' smart constructor.
newtype FatalException =
  FatalException'
    { _feStackTrace :: Maybe StackTrace
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FatalException' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feStackTrace'
fatalException
    :: FatalException
fatalException = FatalException' {_feStackTrace = Nothing}


-- | The stack trace of the fatal exception. Optional.
feStackTrace :: Lens' FatalException (Maybe StackTrace)
feStackTrace
  = lens _feStackTrace (\ s a -> s{_feStackTrace = a})

instance FromJSON FatalException where
        parseJSON
          = withObject "FatalException"
              (\ o -> FatalException' <$> (o .:? "stackTrace"))

instance ToJSON FatalException where
        toJSON FatalException'{..}
          = object
              (catMaybes [("stackTrace" .=) <$> _feStackTrace])

-- | Additional details about encountered login screens.
--
-- /See:/ 'encounteredLoginScreen' smart constructor.
data EncounteredLoginScreen =
  EncounteredLoginScreen'
    { _elsDistinctScreens :: !(Maybe (Textual Int32))
    , _elsScreenIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncounteredLoginScreen' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elsDistinctScreens'
--
-- * 'elsScreenIds'
encounteredLoginScreen
    :: EncounteredLoginScreen
encounteredLoginScreen =
  EncounteredLoginScreen'
    {_elsDistinctScreens = Nothing, _elsScreenIds = Nothing}


-- | Number of encountered distinct login screens.
elsDistinctScreens :: Lens' EncounteredLoginScreen (Maybe Int32)
elsDistinctScreens
  = lens _elsDistinctScreens
      (\ s a -> s{_elsDistinctScreens = a})
      . mapping _Coerce

-- | Subset of login screens.
elsScreenIds :: Lens' EncounteredLoginScreen [Text]
elsScreenIds
  = lens _elsScreenIds (\ s a -> s{_elsScreenIds = a})
      . _Default
      . _Coerce

instance FromJSON EncounteredLoginScreen where
        parseJSON
          = withObject "EncounteredLoginScreen"
              (\ o ->
                 EncounteredLoginScreen' <$>
                   (o .:? "distinctScreens") <*>
                     (o .:? "screenIds" .!= mempty))

instance ToJSON EncounteredLoginScreen where
        toJSON EncounteredLoginScreen'{..}
          = object
              (catMaybes
                 [("distinctScreens" .=) <$> _elsDistinctScreens,
                  ("screenIds" .=) <$> _elsScreenIds])
