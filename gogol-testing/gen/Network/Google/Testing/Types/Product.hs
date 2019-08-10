{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Testing.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Testing.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Testing.Types.Sum

-- | Additional details about the progress of the running test.
--
-- /See:/ 'testDetails' smart constructor.
data TestDetails =
  TestDetails'
    { _tdProgressMessages :: !(Maybe [Text])
    , _tdErrorMessage     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdProgressMessages'
--
-- * 'tdErrorMessage'
testDetails
    :: TestDetails
testDetails =
  TestDetails' {_tdProgressMessages = Nothing, _tdErrorMessage = Nothing}


-- | Output only. Human-readable, detailed descriptions of the test\'s
-- progress. For example: \"Provisioning a device\", \"Starting Test\".
-- During the course of execution new data may be appended to the end of
-- progress_messages.
tdProgressMessages :: Lens' TestDetails [Text]
tdProgressMessages
  = lens _tdProgressMessages
      (\ s a -> s{_tdProgressMessages = a})
      . _Default
      . _Coerce

-- | Output only. If the TestState is ERROR, then this string will contain
-- human-readable details about the error.
tdErrorMessage :: Lens' TestDetails (Maybe Text)
tdErrorMessage
  = lens _tdErrorMessage
      (\ s a -> s{_tdErrorMessage = a})

instance FromJSON TestDetails where
        parseJSON
          = withObject "TestDetails"
              (\ o ->
                 TestDetails' <$>
                   (o .:? "progressMessages" .!= mempty) <*>
                     (o .:? "errorMessage"))

instance ToJSON TestDetails where
        toJSON TestDetails'{..}
          = object
              (catMaybes
                 [("progressMessages" .=) <$> _tdProgressMessages,
                  ("errorMessage" .=) <$> _tdErrorMessage])

-- | The section of an tag.
-- https:\/\/developer.android.com\/guide\/topics\/manifest\/intent-filter-element.html
--
-- /See:/ 'intentFilter' smart constructor.
data IntentFilter =
  IntentFilter'
    { _ifActionNames   :: !(Maybe [Text])
    , _ifMimeType      :: !(Maybe Text)
    , _ifCategoryNames :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IntentFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifActionNames'
--
-- * 'ifMimeType'
--
-- * 'ifCategoryNames'
intentFilter
    :: IntentFilter
intentFilter =
  IntentFilter'
    { _ifActionNames = Nothing
    , _ifMimeType = Nothing
    , _ifCategoryNames = Nothing
    }


-- | The android:name value of the tag.
ifActionNames :: Lens' IntentFilter [Text]
ifActionNames
  = lens _ifActionNames
      (\ s a -> s{_ifActionNames = a})
      . _Default
      . _Coerce

-- | The android:mimeType value of the tag.
ifMimeType :: Lens' IntentFilter (Maybe Text)
ifMimeType
  = lens _ifMimeType (\ s a -> s{_ifMimeType = a})

-- | The android:name value of the tag.
ifCategoryNames :: Lens' IntentFilter [Text]
ifCategoryNames
  = lens _ifCategoryNames
      (\ s a -> s{_ifCategoryNames = a})
      . _Default
      . _Coerce

instance FromJSON IntentFilter where
        parseJSON
          = withObject "IntentFilter"
              (\ o ->
                 IntentFilter' <$>
                   (o .:? "actionNames" .!= mempty) <*>
                     (o .:? "mimeType")
                     <*> (o .:? "categoryNames" .!= mempty))

instance ToJSON IntentFilter where
        toJSON IntentFilter'{..}
          = object
              (catMaybes
                 [("actionNames" .=) <$> _ifActionNames,
                  ("mimeType" .=) <$> _ifMimeType,
                  ("categoryNames" .=) <$> _ifCategoryNames])

-- | A description of how to set up an iOS device prior to a test.
--
-- /See:/ 'iosTestSetup' smart constructor.
newtype IosTestSetup =
  IosTestSetup'
    { _itsNetworkProFile :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IosTestSetup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itsNetworkProFile'
iosTestSetup
    :: IosTestSetup
iosTestSetup = IosTestSetup' {_itsNetworkProFile = Nothing}


-- | The network traffic profile used for running the test. Available network
-- profiles can be queried by using the NETWORK_CONFIGURATION environment
-- type when calling
-- TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
itsNetworkProFile :: Lens' IosTestSetup (Maybe Text)
itsNetworkProFile
  = lens _itsNetworkProFile
      (\ s a -> s{_itsNetworkProFile = a})

instance FromJSON IosTestSetup where
        parseJSON
          = withObject "IosTestSetup"
              (\ o -> IosTestSetup' <$> (o .:? "networkProfile"))

instance ToJSON IosTestSetup where
        toJSON IosTestSetup'{..}
          = object
              (catMaybes
                 [("networkProfile" .=) <$> _itsNetworkProFile])

-- | Specifies a single test to be executed in a single environment.
--
-- /See:/ 'testExecution' smart constructor.
data TestExecution =
  TestExecution'
    { _teTestDetails       :: !(Maybe TestDetails)
    , _teState             :: !(Maybe TestExecutionState)
    , _teEnvironment       :: !(Maybe Environment)
    , _teTestSpecification :: !(Maybe TestSpecification)
    , _teMatrixId          :: !(Maybe Text)
    , _teId                :: !(Maybe Text)
    , _teProjectId         :: !(Maybe Text)
    , _teToolResultsStep   :: !(Maybe ToolResultsStep)
    , _teTimestamp         :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teTestDetails'
--
-- * 'teState'
--
-- * 'teEnvironment'
--
-- * 'teTestSpecification'
--
-- * 'teMatrixId'
--
-- * 'teId'
--
-- * 'teProjectId'
--
-- * 'teToolResultsStep'
--
-- * 'teTimestamp'
testExecution
    :: TestExecution
testExecution =
  TestExecution'
    { _teTestDetails = Nothing
    , _teState = Nothing
    , _teEnvironment = Nothing
    , _teTestSpecification = Nothing
    , _teMatrixId = Nothing
    , _teId = Nothing
    , _teProjectId = Nothing
    , _teToolResultsStep = Nothing
    , _teTimestamp = Nothing
    }


-- | Output only. Additional details about the running test.
teTestDetails :: Lens' TestExecution (Maybe TestDetails)
teTestDetails
  = lens _teTestDetails
      (\ s a -> s{_teTestDetails = a})

-- | Output only. Indicates the current progress of the test execution (e.g.,
-- FINISHED).
teState :: Lens' TestExecution (Maybe TestExecutionState)
teState = lens _teState (\ s a -> s{_teState = a})

-- | Output only. How the host machine(s) are configured.
teEnvironment :: Lens' TestExecution (Maybe Environment)
teEnvironment
  = lens _teEnvironment
      (\ s a -> s{_teEnvironment = a})

-- | Output only. How to run the test.
teTestSpecification :: Lens' TestExecution (Maybe TestSpecification)
teTestSpecification
  = lens _teTestSpecification
      (\ s a -> s{_teTestSpecification = a})

-- | Output only. Id of the containing TestMatrix.
teMatrixId :: Lens' TestExecution (Maybe Text)
teMatrixId
  = lens _teMatrixId (\ s a -> s{_teMatrixId = a})

-- | Output only. Unique id set by the backend.
teId :: Lens' TestExecution (Maybe Text)
teId = lens _teId (\ s a -> s{_teId = a})

-- | Output only. The cloud project that owns the test execution.
teProjectId :: Lens' TestExecution (Maybe Text)
teProjectId
  = lens _teProjectId (\ s a -> s{_teProjectId = a})

-- | Output only. Where the results for this execution are written.
teToolResultsStep :: Lens' TestExecution (Maybe ToolResultsStep)
teToolResultsStep
  = lens _teToolResultsStep
      (\ s a -> s{_teToolResultsStep = a})

-- | Output only. The time this test execution was initially created.
teTimestamp :: Lens' TestExecution (Maybe UTCTime)
teTimestamp
  = lens _teTimestamp (\ s a -> s{_teTimestamp = a}) .
      mapping _DateTime

instance FromJSON TestExecution where
        parseJSON
          = withObject "TestExecution"
              (\ o ->
                 TestExecution' <$>
                   (o .:? "testDetails") <*> (o .:? "state") <*>
                     (o .:? "environment")
                     <*> (o .:? "testSpecification")
                     <*> (o .:? "matrixId")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "toolResultsStep")
                     <*> (o .:? "timestamp"))

instance ToJSON TestExecution where
        toJSON TestExecution'{..}
          = object
              (catMaybes
                 [("testDetails" .=) <$> _teTestDetails,
                  ("state" .=) <$> _teState,
                  ("environment" .=) <$> _teEnvironment,
                  ("testSpecification" .=) <$> _teTestSpecification,
                  ("matrixId" .=) <$> _teMatrixId, ("id" .=) <$> _teId,
                  ("projectId" .=) <$> _teProjectId,
                  ("toolResultsStep" .=) <$> _teToolResultsStep,
                  ("timestamp" .=) <$> _teTimestamp])

-- | An iOS version.
--
-- /See:/ 'iosVersion' smart constructor.
data IosVersion =
  IosVersion'
    { _ivMinorVersion             :: !(Maybe (Textual Int32))
    , _ivMajorVersion             :: !(Maybe (Textual Int32))
    , _ivSupportedXcodeVersionIds :: !(Maybe [Text])
    , _ivId                       :: !(Maybe Text)
    , _ivTags                     :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IosVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivMinorVersion'
--
-- * 'ivMajorVersion'
--
-- * 'ivSupportedXcodeVersionIds'
--
-- * 'ivId'
--
-- * 'ivTags'
iosVersion
    :: IosVersion
iosVersion =
  IosVersion'
    { _ivMinorVersion = Nothing
    , _ivMajorVersion = Nothing
    , _ivSupportedXcodeVersionIds = Nothing
    , _ivId = Nothing
    , _ivTags = Nothing
    }


-- | An integer representing the minor iOS version. Examples: \"1\", \"2\".
ivMinorVersion :: Lens' IosVersion (Maybe Int32)
ivMinorVersion
  = lens _ivMinorVersion
      (\ s a -> s{_ivMinorVersion = a})
      . mapping _Coerce

-- | An integer representing the major iOS version. Examples: \"8\", \"9\".
ivMajorVersion :: Lens' IosVersion (Maybe Int32)
ivMajorVersion
  = lens _ivMajorVersion
      (\ s a -> s{_ivMajorVersion = a})
      . mapping _Coerce

-- | The available Xcode versions for this version.
ivSupportedXcodeVersionIds :: Lens' IosVersion [Text]
ivSupportedXcodeVersionIds
  = lens _ivSupportedXcodeVersionIds
      (\ s a -> s{_ivSupportedXcodeVersionIds = a})
      . _Default
      . _Coerce

-- | An opaque id for this iOS version. Use this id to invoke the
-- TestExecutionService.
ivId :: Lens' IosVersion (Maybe Text)
ivId = lens _ivId (\ s a -> s{_ivId = a})

-- | Tags for this dimension. Examples: \"default\", \"preview\",
-- \"deprecated\".
ivTags :: Lens' IosVersion [Text]
ivTags
  = lens _ivTags (\ s a -> s{_ivTags = a}) . _Default .
      _Coerce

instance FromJSON IosVersion where
        parseJSON
          = withObject "IosVersion"
              (\ o ->
                 IosVersion' <$>
                   (o .:? "minorVersion") <*> (o .:? "majorVersion") <*>
                     (o .:? "supportedXcodeVersionIds" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON IosVersion where
        toJSON IosVersion'{..}
          = object
              (catMaybes
                 [("minorVersion" .=) <$> _ivMinorVersion,
                  ("majorVersion" .=) <$> _ivMajorVersion,
                  ("supportedXcodeVersionIds" .=) <$>
                    _ivSupportedXcodeVersionIds,
                  ("id" .=) <$> _ivId, ("tags" .=) <$> _ivTags])

-- | A list of iOS device configurations in which the test is to be executed.
--
-- /See:/ 'iosDeviceList' smart constructor.
newtype IosDeviceList =
  IosDeviceList'
    { _idlIosDevices :: Maybe [IosDevice]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IosDeviceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idlIosDevices'
iosDeviceList
    :: IosDeviceList
iosDeviceList = IosDeviceList' {_idlIosDevices = Nothing}


-- | Required. A list of iOS devices.
idlIosDevices :: Lens' IosDeviceList [IosDevice]
idlIosDevices
  = lens _idlIosDevices
      (\ s a -> s{_idlIosDevices = a})
      . _Default
      . _Coerce

instance FromJSON IosDeviceList where
        parseJSON
          = withObject "IosDeviceList"
              (\ o ->
                 IosDeviceList' <$> (o .:? "iosDevices" .!= mempty))

instance ToJSON IosDeviceList where
        toJSON IosDeviceList'{..}
          = object
              (catMaybes [("iosDevices" .=) <$> _idlIosDevices])

-- | Directs Robo to interact with a specific UI element if it is encountered
-- during the crawl. Currently, Robo can perform text entry or element
-- click.
--
-- /See:/ 'roboDirective' smart constructor.
data RoboDirective =
  RoboDirective'
    { _rdResourceName :: !(Maybe Text)
    , _rdInputText    :: !(Maybe Text)
    , _rdActionType   :: !(Maybe RoboDirectiveActionType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoboDirective' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdResourceName'
--
-- * 'rdInputText'
--
-- * 'rdActionType'
roboDirective
    :: RoboDirective
roboDirective =
  RoboDirective'
    {_rdResourceName = Nothing, _rdInputText = Nothing, _rdActionType = Nothing}


-- | Required. The android resource name of the target UI element. For
-- example, in Java: R.string.foo in xml: \'string\/foo Only the \"foo\"
-- part is needed. Reference doc:
-- https:\/\/developer.android.com\/guide\/topics\/resources\/accessing-resources.html
rdResourceName :: Lens' RoboDirective (Maybe Text)
rdResourceName
  = lens _rdResourceName
      (\ s a -> s{_rdResourceName = a})

-- | The text that Robo is directed to set. If left empty, the directive will
-- be treated as a CLICK on the element matching the resource_name.
rdInputText :: Lens' RoboDirective (Maybe Text)
rdInputText
  = lens _rdInputText (\ s a -> s{_rdInputText = a})

-- | Required. The type of action that Robo should perform on the specified
-- element.
rdActionType :: Lens' RoboDirective (Maybe RoboDirectiveActionType)
rdActionType
  = lens _rdActionType (\ s a -> s{_rdActionType = a})

instance FromJSON RoboDirective where
        parseJSON
          = withObject "RoboDirective"
              (\ o ->
                 RoboDirective' <$>
                   (o .:? "resourceName") <*> (o .:? "inputText") <*>
                     (o .:? "actionType"))

instance ToJSON RoboDirective where
        toJSON RoboDirective'{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _rdResourceName,
                  ("inputText" .=) <$> _rdInputText,
                  ("actionType" .=) <$> _rdActionType])

-- | Android configuration that can be selected at the time a test is run.
--
-- /See:/ 'androidRuntimeConfiguration' smart constructor.
data AndroidRuntimeConfiguration =
  AndroidRuntimeConfiguration'
    { _arcOrientations :: !(Maybe [Orientation])
    , _arcLocales      :: !(Maybe [Locale])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidRuntimeConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arcOrientations'
--
-- * 'arcLocales'
androidRuntimeConfiguration
    :: AndroidRuntimeConfiguration
androidRuntimeConfiguration =
  AndroidRuntimeConfiguration'
    {_arcOrientations = Nothing, _arcLocales = Nothing}


-- | The set of available orientations.
arcOrientations :: Lens' AndroidRuntimeConfiguration [Orientation]
arcOrientations
  = lens _arcOrientations
      (\ s a -> s{_arcOrientations = a})
      . _Default
      . _Coerce

-- | The set of available locales.
arcLocales :: Lens' AndroidRuntimeConfiguration [Locale]
arcLocales
  = lens _arcLocales (\ s a -> s{_arcLocales = a}) .
      _Default
      . _Coerce

instance FromJSON AndroidRuntimeConfiguration where
        parseJSON
          = withObject "AndroidRuntimeConfiguration"
              (\ o ->
                 AndroidRuntimeConfiguration' <$>
                   (o .:? "orientations" .!= mempty) <*>
                     (o .:? "locales" .!= mempty))

instance ToJSON AndroidRuntimeConfiguration where
        toJSON AndroidRuntimeConfiguration'{..}
          = object
              (catMaybes
                 [("orientations" .=) <$> _arcOrientations,
                  ("locales" .=) <$> _arcLocales])

-- | An Xcode version that an iOS version is compatible with.
--
-- /See:/ 'xcodeVersion' smart constructor.
data XcodeVersion =
  XcodeVersion'
    { _xvVersion :: !(Maybe Text)
    , _xvTags    :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'XcodeVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'xvVersion'
--
-- * 'xvTags'
xcodeVersion
    :: XcodeVersion
xcodeVersion = XcodeVersion' {_xvVersion = Nothing, _xvTags = Nothing}


-- | The id for this version. Example: \"9.2\".
xvVersion :: Lens' XcodeVersion (Maybe Text)
xvVersion
  = lens _xvVersion (\ s a -> s{_xvVersion = a})

-- | Tags for this Xcode version. Example: \"default\".
xvTags :: Lens' XcodeVersion [Text]
xvTags
  = lens _xvTags (\ s a -> s{_xvTags = a}) . _Default .
      _Coerce

instance FromJSON XcodeVersion where
        parseJSON
          = withObject "XcodeVersion"
              (\ o ->
                 XcodeVersion' <$>
                   (o .:? "version") <*> (o .:? "tags" .!= mempty))

instance ToJSON XcodeVersion where
        toJSON XcodeVersion'{..}
          = object
              (catMaybes
                 [("version" .=) <$> _xvVersion,
                  ("tags" .=) <$> _xvTags])

-- | Data about the relative number of devices running a given configuration
-- of the Android platform.
--
-- /See:/ 'distribution' smart constructor.
data Distribution =
  Distribution'
    { _dMeasurementTime :: !(Maybe DateTime')
    , _dMarketShare     :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Distribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMeasurementTime'
--
-- * 'dMarketShare'
distribution
    :: Distribution
distribution =
  Distribution' {_dMeasurementTime = Nothing, _dMarketShare = Nothing}


-- | Output only. The time this distribution was measured.
dMeasurementTime :: Lens' Distribution (Maybe UTCTime)
dMeasurementTime
  = lens _dMeasurementTime
      (\ s a -> s{_dMeasurementTime = a})
      . mapping _DateTime

-- | Output only. The estimated fraction (0-1) of the total market with this
-- configuration.
dMarketShare :: Lens' Distribution (Maybe Double)
dMarketShare
  = lens _dMarketShare (\ s a -> s{_dMarketShare = a})
      . mapping _Coerce

instance FromJSON Distribution where
        parseJSON
          = withObject "Distribution"
              (\ o ->
                 Distribution' <$>
                   (o .:? "measurementTime") <*> (o .:? "marketShare"))

instance ToJSON Distribution where
        toJSON Distribution'{..}
          = object
              (catMaybes
                 [("measurementTime" .=) <$> _dMeasurementTime,
                  ("marketShare" .=) <$> _dMarketShare])

-- | A description of an iOS device tests may be run on.
--
-- /See:/ 'iosModel' smart constructor.
data IosModel =
  IosModel'
    { _imFormFactor          :: !(Maybe IosModelFormFactor)
    , _imName                :: !(Maybe Text)
    , _imSupportedVersionIds :: !(Maybe [Text])
    , _imId                  :: !(Maybe Text)
    , _imDeviceCapabilities  :: !(Maybe [Text])
    , _imTags                :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IosModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imFormFactor'
--
-- * 'imName'
--
-- * 'imSupportedVersionIds'
--
-- * 'imId'
--
-- * 'imDeviceCapabilities'
--
-- * 'imTags'
iosModel
    :: IosModel
iosModel =
  IosModel'
    { _imFormFactor = Nothing
    , _imName = Nothing
    , _imSupportedVersionIds = Nothing
    , _imId = Nothing
    , _imDeviceCapabilities = Nothing
    , _imTags = Nothing
    }


-- | Whether this device is a phone, tablet, wearable, etc.
imFormFactor :: Lens' IosModel (Maybe IosModelFormFactor)
imFormFactor
  = lens _imFormFactor (\ s a -> s{_imFormFactor = a})

-- | The human-readable name for this device model. Examples: \"iPhone 4s\",
-- \"iPad Mini 2\".
imName :: Lens' IosModel (Maybe Text)
imName = lens _imName (\ s a -> s{_imName = a})

-- | The set of iOS major software versions this device supports.
imSupportedVersionIds :: Lens' IosModel [Text]
imSupportedVersionIds
  = lens _imSupportedVersionIds
      (\ s a -> s{_imSupportedVersionIds = a})
      . _Default
      . _Coerce

-- | The unique opaque id for this model. Use this for invoking the
-- TestExecutionService.
imId :: Lens' IosModel (Maybe Text)
imId = lens _imId (\ s a -> s{_imId = a})

-- | Device capabilities. Copied from
-- https:\/\/developer.apple.com\/library\/archive\/documentation\/DeviceInformation\/Reference\/iOSDeviceCompatibility\/DeviceCompatibilityMatrix\/DeviceCompatibilityMatrix.html
imDeviceCapabilities :: Lens' IosModel [Text]
imDeviceCapabilities
  = lens _imDeviceCapabilities
      (\ s a -> s{_imDeviceCapabilities = a})
      . _Default
      . _Coerce

-- | Tags for this dimension. Examples: \"default\", \"preview\",
-- \"deprecated\".
imTags :: Lens' IosModel [Text]
imTags
  = lens _imTags (\ s a -> s{_imTags = a}) . _Default .
      _Coerce

instance FromJSON IosModel where
        parseJSON
          = withObject "IosModel"
              (\ o ->
                 IosModel' <$>
                   (o .:? "formFactor") <*> (o .:? "name") <*>
                     (o .:? "supportedVersionIds" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "deviceCapabilities" .!= mempty)
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON IosModel where
        toJSON IosModel'{..}
          = object
              (catMaybes
                 [("formFactor" .=) <$> _imFormFactor,
                  ("name" .=) <$> _imName,
                  ("supportedVersionIds" .=) <$>
                    _imSupportedVersionIds,
                  ("id" .=) <$> _imId,
                  ("deviceCapabilities" .=) <$> _imDeviceCapabilities,
                  ("tags" .=) <$> _imTags])

-- | An Android package file to install.
--
-- /See:/ 'aPK' smart constructor.
data APK =
  APK'
    { _aPackageName :: !(Maybe Text)
    , _aLocation    :: !(Maybe FileReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APK' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aPackageName'
--
-- * 'aLocation'
aPK
    :: APK
aPK = APK' {_aPackageName = Nothing, _aLocation = Nothing}


-- | The java package for the APK to be installed. Value is determined by
-- examining the application\'s manifest.
aPackageName :: Lens' APK (Maybe Text)
aPackageName
  = lens _aPackageName (\ s a -> s{_aPackageName = a})

-- | The path to an APK to be installed on the device before the test begins.
aLocation :: Lens' APK (Maybe FileReference)
aLocation
  = lens _aLocation (\ s a -> s{_aLocation = a})

instance FromJSON APK where
        parseJSON
          = withObject "APK"
              (\ o ->
                 APK' <$>
                   (o .:? "packageName") <*> (o .:? "location"))

instance ToJSON APK where
        toJSON APK'{..}
          = object
              (catMaybes
                 [("packageName" .=) <$> _aPackageName,
                  ("location" .=) <$> _aLocation])

--
-- /See:/ 'networkConfigurationCatalog' smart constructor.
newtype NetworkConfigurationCatalog =
  NetworkConfigurationCatalog'
    { _nccConfigurations :: Maybe [NetworkConfiguration]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkConfigurationCatalog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nccConfigurations'
networkConfigurationCatalog
    :: NetworkConfigurationCatalog
networkConfigurationCatalog =
  NetworkConfigurationCatalog' {_nccConfigurations = Nothing}


nccConfigurations :: Lens' NetworkConfigurationCatalog [NetworkConfiguration]
nccConfigurations
  = lens _nccConfigurations
      (\ s a -> s{_nccConfigurations = a})
      . _Default
      . _Coerce

instance FromJSON NetworkConfigurationCatalog where
        parseJSON
          = withObject "NetworkConfigurationCatalog"
              (\ o ->
                 NetworkConfigurationCatalog' <$>
                   (o .:? "configurations" .!= mempty))

instance ToJSON NetworkConfigurationCatalog where
        toJSON NetworkConfigurationCatalog'{..}
          = object
              (catMaybes
                 [("configurations" .=) <$> _nccConfigurations])

-- | A single iOS device.
--
-- /See:/ 'iosDevice' smart constructor.
data IosDevice =
  IosDevice'
    { _idLocale       :: !(Maybe Text)
    , _idIosModelId   :: !(Maybe Text)
    , _idIosVersionId :: !(Maybe Text)
    , _idOrientation  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IosDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idLocale'
--
-- * 'idIosModelId'
--
-- * 'idIosVersionId'
--
-- * 'idOrientation'
iosDevice
    :: IosDevice
iosDevice =
  IosDevice'
    { _idLocale = Nothing
    , _idIosModelId = Nothing
    , _idIosVersionId = Nothing
    , _idOrientation = Nothing
    }


-- | Required. The locale the test device used for testing. Use the
-- TestEnvironmentDiscoveryService to get supported options.
idLocale :: Lens' IosDevice (Maybe Text)
idLocale = lens _idLocale (\ s a -> s{_idLocale = a})

-- | Required. The id of the iOS device to be used. Use the
-- TestEnvironmentDiscoveryService to get supported options.
idIosModelId :: Lens' IosDevice (Maybe Text)
idIosModelId
  = lens _idIosModelId (\ s a -> s{_idIosModelId = a})

-- | Required. The id of the iOS major software version to be used. Use the
-- TestEnvironmentDiscoveryService to get supported options.
idIosVersionId :: Lens' IosDevice (Maybe Text)
idIosVersionId
  = lens _idIosVersionId
      (\ s a -> s{_idIosVersionId = a})

-- | Required. How the device is oriented during the test. Use the
-- TestEnvironmentDiscoveryService to get supported options.
idOrientation :: Lens' IosDevice (Maybe Text)
idOrientation
  = lens _idOrientation
      (\ s a -> s{_idOrientation = a})

instance FromJSON IosDevice where
        parseJSON
          = withObject "IosDevice"
              (\ o ->
                 IosDevice' <$>
                   (o .:? "locale") <*> (o .:? "iosModelId") <*>
                     (o .:? "iosVersionId")
                     <*> (o .:? "orientation"))

instance ToJSON IosDevice where
        toJSON IosDevice'{..}
          = object
              (catMaybes
                 [("locale" .=) <$> _idLocale,
                  ("iosModelId" .=) <$> _idIosModelId,
                  ("iosVersionId" .=) <$> _idIosVersionId,
                  ("orientation" .=) <$> _idOrientation])

-- | Response containing the details of the specified Android application
-- APK.
--
-- /See:/ 'getAPKDetailsResponse' smart constructor.
newtype GetAPKDetailsResponse =
  GetAPKDetailsResponse'
    { _gapkdrAPKDetail :: Maybe APKDetail
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetAPKDetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gapkdrAPKDetail'
getAPKDetailsResponse
    :: GetAPKDetailsResponse
getAPKDetailsResponse = GetAPKDetailsResponse' {_gapkdrAPKDetail = Nothing}


-- | Details of the Android APK.
gapkdrAPKDetail :: Lens' GetAPKDetailsResponse (Maybe APKDetail)
gapkdrAPKDetail
  = lens _gapkdrAPKDetail
      (\ s a -> s{_gapkdrAPKDetail = a})

instance FromJSON GetAPKDetailsResponse where
        parseJSON
          = withObject "GetAPKDetailsResponse"
              (\ o ->
                 GetAPKDetailsResponse' <$> (o .:? "apkDetail"))

instance ToJSON GetAPKDetailsResponse where
        toJSON GetAPKDetailsResponse'{..}
          = object
              (catMaybes [("apkDetail" .=) <$> _gapkdrAPKDetail])

-- | A test of an android application that explores the application on a
-- virtual or physical Android Device, finding culprits and crashes as it
-- goes.
--
-- /See:/ 'androidRoboTest' smart constructor.
data AndroidRoboTest =
  AndroidRoboTest'
    { _artRoboDirectives     :: !(Maybe [RoboDirective])
    , _artRoboScript         :: !(Maybe FileReference)
    , _artStartingIntents    :: !(Maybe [RoboStartingIntent])
    , _artAppInitialActivity :: !(Maybe Text)
    , _artMaxSteps           :: !(Maybe (Textual Int32))
    , _artAppPackageId       :: !(Maybe Text)
    , _artAppBundle          :: !(Maybe AppBundle)
    , _artAppAPK             :: !(Maybe FileReference)
    , _artMaxDepth           :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidRoboTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artRoboDirectives'
--
-- * 'artRoboScript'
--
-- * 'artStartingIntents'
--
-- * 'artAppInitialActivity'
--
-- * 'artMaxSteps'
--
-- * 'artAppPackageId'
--
-- * 'artAppBundle'
--
-- * 'artAppAPK'
--
-- * 'artMaxDepth'
androidRoboTest
    :: AndroidRoboTest
androidRoboTest =
  AndroidRoboTest'
    { _artRoboDirectives = Nothing
    , _artRoboScript = Nothing
    , _artStartingIntents = Nothing
    , _artAppInitialActivity = Nothing
    , _artMaxSteps = Nothing
    , _artAppPackageId = Nothing
    , _artAppBundle = Nothing
    , _artAppAPK = Nothing
    , _artMaxDepth = Nothing
    }


-- | A set of directives Robo should apply during the crawl. This allows
-- users to customize the crawl. For example, the username and password for
-- a test account can be provided.
artRoboDirectives :: Lens' AndroidRoboTest [RoboDirective]
artRoboDirectives
  = lens _artRoboDirectives
      (\ s a -> s{_artRoboDirectives = a})
      . _Default
      . _Coerce

-- | A JSON file with a sequence of actions Robo should perform as a prologue
-- for the crawl.
artRoboScript :: Lens' AndroidRoboTest (Maybe FileReference)
artRoboScript
  = lens _artRoboScript
      (\ s a -> s{_artRoboScript = a})

-- | The intents used to launch the app for the crawl. If none are provided,
-- then the main launcher activity is launched. If some are provided, then
-- only those provided are launched (the main launcher activity must be
-- provided explicitly).
artStartingIntents :: Lens' AndroidRoboTest [RoboStartingIntent]
artStartingIntents
  = lens _artStartingIntents
      (\ s a -> s{_artStartingIntents = a})
      . _Default
      . _Coerce

-- | The initial activity that should be used to start the app.
artAppInitialActivity :: Lens' AndroidRoboTest (Maybe Text)
artAppInitialActivity
  = lens _artAppInitialActivity
      (\ s a -> s{_artAppInitialActivity = a})

-- | The max number of steps Robo can execute. Default is no limit.
artMaxSteps :: Lens' AndroidRoboTest (Maybe Int32)
artMaxSteps
  = lens _artMaxSteps (\ s a -> s{_artMaxSteps = a}) .
      mapping _Coerce

-- | The java package for the application under test. The default value is
-- determined by examining the application\'s manifest.
artAppPackageId :: Lens' AndroidRoboTest (Maybe Text)
artAppPackageId
  = lens _artAppPackageId
      (\ s a -> s{_artAppPackageId = a})

-- | A multi-apk app bundle for the application under test.
artAppBundle :: Lens' AndroidRoboTest (Maybe AppBundle)
artAppBundle
  = lens _artAppBundle (\ s a -> s{_artAppBundle = a})

-- | The APK for the application under test.
artAppAPK :: Lens' AndroidRoboTest (Maybe FileReference)
artAppAPK
  = lens _artAppAPK (\ s a -> s{_artAppAPK = a})

-- | The max depth of the traversal stack Robo can explore. Needs to be at
-- least 2 to make Robo explore the app beyond the first activity. Default
-- is 50.
artMaxDepth :: Lens' AndroidRoboTest (Maybe Int32)
artMaxDepth
  = lens _artMaxDepth (\ s a -> s{_artMaxDepth = a}) .
      mapping _Coerce

instance FromJSON AndroidRoboTest where
        parseJSON
          = withObject "AndroidRoboTest"
              (\ o ->
                 AndroidRoboTest' <$>
                   (o .:? "roboDirectives" .!= mempty) <*>
                     (o .:? "roboScript")
                     <*> (o .:? "startingIntents" .!= mempty)
                     <*> (o .:? "appInitialActivity")
                     <*> (o .:? "maxSteps")
                     <*> (o .:? "appPackageId")
                     <*> (o .:? "appBundle")
                     <*> (o .:? "appApk")
                     <*> (o .:? "maxDepth"))

instance ToJSON AndroidRoboTest where
        toJSON AndroidRoboTest'{..}
          = object
              (catMaybes
                 [("roboDirectives" .=) <$> _artRoboDirectives,
                  ("roboScript" .=) <$> _artRoboScript,
                  ("startingIntents" .=) <$> _artStartingIntents,
                  ("appInitialActivity" .=) <$> _artAppInitialActivity,
                  ("maxSteps" .=) <$> _artMaxSteps,
                  ("appPackageId" .=) <$> _artAppPackageId,
                  ("appBundle" .=) <$> _artAppBundle,
                  ("appApk" .=) <$> _artAppAPK,
                  ("maxDepth" .=) <$> _artMaxDepth])

-- | A reference to a file, used for user inputs.
--
-- /See:/ 'fileReference' smart constructor.
newtype FileReference =
  FileReference'
    { _frGcsPath :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frGcsPath'
fileReference
    :: FileReference
fileReference = FileReference' {_frGcsPath = Nothing}


-- | A path to a file in Google Cloud Storage. Example:
-- gs:\/\/build-app-1414623860166\/app-debug-unaligned.apk
frGcsPath :: Lens' FileReference (Maybe Text)
frGcsPath
  = lens _frGcsPath (\ s a -> s{_frGcsPath = a})

instance FromJSON FileReference where
        parseJSON
          = withObject "FileReference"
              (\ o -> FileReference' <$> (o .:? "gcsPath"))

instance ToJSON FileReference where
        toJSON FileReference'{..}
          = object (catMaybes [("gcsPath" .=) <$> _frGcsPath])

-- | The environment in which the test is run.
--
-- /See:/ 'environment' smart constructor.
data Environment =
  Environment'
    { _eIosDevice     :: !(Maybe IosDevice)
    , _eAndroidDevice :: !(Maybe AndroidDevice)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eIosDevice'
--
-- * 'eAndroidDevice'
environment
    :: Environment
environment = Environment' {_eIosDevice = Nothing, _eAndroidDevice = Nothing}


-- | An iOS device which must be used with an iOS test.
eIosDevice :: Lens' Environment (Maybe IosDevice)
eIosDevice
  = lens _eIosDevice (\ s a -> s{_eIosDevice = a})

-- | An Android device which must be used with an Android test.
eAndroidDevice :: Lens' Environment (Maybe AndroidDevice)
eAndroidDevice
  = lens _eAndroidDevice
      (\ s a -> s{_eAndroidDevice = a})

instance FromJSON Environment where
        parseJSON
          = withObject "Environment"
              (\ o ->
                 Environment' <$>
                   (o .:? "iosDevice") <*> (o .:? "androidDevice"))

instance ToJSON Environment where
        toJSON Environment'{..}
          = object
              (catMaybes
                 [("iosDevice" .=) <$> _eIosDevice,
                  ("androidDevice" .=) <$> _eAndroidDevice])

-- | Represents a tool results history resource.
--
-- /See:/ 'toolResultsHistory' smart constructor.
data ToolResultsHistory =
  ToolResultsHistory'
    { _trhHistoryId :: !(Maybe Text)
    , _trhProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ToolResultsHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trhHistoryId'
--
-- * 'trhProjectId'
toolResultsHistory
    :: ToolResultsHistory
toolResultsHistory =
  ToolResultsHistory' {_trhHistoryId = Nothing, _trhProjectId = Nothing}


-- | Required. A tool results history ID.
trhHistoryId :: Lens' ToolResultsHistory (Maybe Text)
trhHistoryId
  = lens _trhHistoryId (\ s a -> s{_trhHistoryId = a})

-- | Required. The cloud project that owns the tool results history.
trhProjectId :: Lens' ToolResultsHistory (Maybe Text)
trhProjectId
  = lens _trhProjectId (\ s a -> s{_trhProjectId = a})

instance FromJSON ToolResultsHistory where
        parseJSON
          = withObject "ToolResultsHistory"
              (\ o ->
                 ToolResultsHistory' <$>
                   (o .:? "historyId") <*> (o .:? "projectId"))

instance ToJSON ToolResultsHistory where
        toJSON ToolResultsHistory'{..}
          = object
              (catMaybes
                 [("historyId" .=) <$> _trhHistoryId,
                  ("projectId" .=) <$> _trhProjectId])

-- | A description of a test environment.
--
-- /See:/ 'testEnvironmentCatalog' smart constructor.
data TestEnvironmentCatalog =
  TestEnvironmentCatalog'
    { _tecSoftwareCatalog             :: !(Maybe ProvidedSoftwareCatalog)
    , _tecNetworkConfigurationCatalog :: !(Maybe NetworkConfigurationCatalog)
    , _tecAndroidDeviceCatalog        :: !(Maybe AndroidDeviceCatalog)
    , _tecIosDeviceCatalog            :: !(Maybe IosDeviceCatalog)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestEnvironmentCatalog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tecSoftwareCatalog'
--
-- * 'tecNetworkConfigurationCatalog'
--
-- * 'tecAndroidDeviceCatalog'
--
-- * 'tecIosDeviceCatalog'
testEnvironmentCatalog
    :: TestEnvironmentCatalog
testEnvironmentCatalog =
  TestEnvironmentCatalog'
    { _tecSoftwareCatalog = Nothing
    , _tecNetworkConfigurationCatalog = Nothing
    , _tecAndroidDeviceCatalog = Nothing
    , _tecIosDeviceCatalog = Nothing
    }


-- | The software test environment provided by TestExecutionService.
tecSoftwareCatalog :: Lens' TestEnvironmentCatalog (Maybe ProvidedSoftwareCatalog)
tecSoftwareCatalog
  = lens _tecSoftwareCatalog
      (\ s a -> s{_tecSoftwareCatalog = a})

-- | Supported network configurations.
tecNetworkConfigurationCatalog :: Lens' TestEnvironmentCatalog (Maybe NetworkConfigurationCatalog)
tecNetworkConfigurationCatalog
  = lens _tecNetworkConfigurationCatalog
      (\ s a -> s{_tecNetworkConfigurationCatalog = a})

-- | Supported Android devices.
tecAndroidDeviceCatalog :: Lens' TestEnvironmentCatalog (Maybe AndroidDeviceCatalog)
tecAndroidDeviceCatalog
  = lens _tecAndroidDeviceCatalog
      (\ s a -> s{_tecAndroidDeviceCatalog = a})

-- | Supported iOS devices.
tecIosDeviceCatalog :: Lens' TestEnvironmentCatalog (Maybe IosDeviceCatalog)
tecIosDeviceCatalog
  = lens _tecIosDeviceCatalog
      (\ s a -> s{_tecIosDeviceCatalog = a})

instance FromJSON TestEnvironmentCatalog where
        parseJSON
          = withObject "TestEnvironmentCatalog"
              (\ o ->
                 TestEnvironmentCatalog' <$>
                   (o .:? "softwareCatalog") <*>
                     (o .:? "networkConfigurationCatalog")
                     <*> (o .:? "androidDeviceCatalog")
                     <*> (o .:? "iosDeviceCatalog"))

instance ToJSON TestEnvironmentCatalog where
        toJSON TestEnvironmentCatalog'{..}
          = object
              (catMaybes
                 [("softwareCatalog" .=) <$> _tecSoftwareCatalog,
                  ("networkConfigurationCatalog" .=) <$>
                    _tecNetworkConfigurationCatalog,
                  ("androidDeviceCatalog" .=) <$>
                    _tecAndroidDeviceCatalog,
                  ("iosDeviceCatalog" .=) <$> _tecIosDeviceCatalog])

-- | A location\/region designation for language.
--
-- /See:/ 'locale' smart constructor.
data Locale =
  Locale'
    { _lName   :: !(Maybe Text)
    , _lId     :: !(Maybe Text)
    , _lRegion :: !(Maybe Text)
    , _lTags   :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Locale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lId'
--
-- * 'lRegion'
--
-- * 'lTags'
locale
    :: Locale
locale =
  Locale'
    {_lName = Nothing, _lId = Nothing, _lRegion = Nothing, _lTags = Nothing}


-- | A human-friendly name for this language\/locale. Example: \"English\".
lName :: Lens' Locale (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | The id for this locale. Example: \"en_US\".
lId :: Lens' Locale (Maybe Text)
lId = lens _lId (\ s a -> s{_lId = a})

-- | A human-friendly string representing the region for this locale.
-- Example: \"United States\". Not present for every locale.
lRegion :: Lens' Locale (Maybe Text)
lRegion = lens _lRegion (\ s a -> s{_lRegion = a})

-- | Tags for this dimension. Example: \"default\".
lTags :: Lens' Locale [Text]
lTags
  = lens _lTags (\ s a -> s{_lTags = a}) . _Default .
      _Coerce

instance FromJSON Locale where
        parseJSON
          = withObject "Locale"
              (\ o ->
                 Locale' <$>
                   (o .:? "name") <*> (o .:? "id") <*> (o .:? "region")
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON Locale where
        toJSON Locale'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName, ("id" .=) <$> _lId,
                  ("region" .=) <$> _lRegion, ("tags" .=) <$> _lTags])

-- | The currently supported Android devices.
--
-- /See:/ 'androidDeviceCatalog' smart constructor.
data AndroidDeviceCatalog =
  AndroidDeviceCatalog'
    { _adcVersions             :: !(Maybe [AndroidVersion])
    , _adcModels               :: !(Maybe [AndroidModel])
    , _adcRuntimeConfiguration :: !(Maybe AndroidRuntimeConfiguration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidDeviceCatalog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adcVersions'
--
-- * 'adcModels'
--
-- * 'adcRuntimeConfiguration'
androidDeviceCatalog
    :: AndroidDeviceCatalog
androidDeviceCatalog =
  AndroidDeviceCatalog'
    { _adcVersions = Nothing
    , _adcModels = Nothing
    , _adcRuntimeConfiguration = Nothing
    }


-- | The set of supported Android OS versions.
adcVersions :: Lens' AndroidDeviceCatalog [AndroidVersion]
adcVersions
  = lens _adcVersions (\ s a -> s{_adcVersions = a}) .
      _Default
      . _Coerce

-- | The set of supported Android device models.
adcModels :: Lens' AndroidDeviceCatalog [AndroidModel]
adcModels
  = lens _adcModels (\ s a -> s{_adcModels = a}) .
      _Default
      . _Coerce

-- | The set of supported runtime configurations.
adcRuntimeConfiguration :: Lens' AndroidDeviceCatalog (Maybe AndroidRuntimeConfiguration)
adcRuntimeConfiguration
  = lens _adcRuntimeConfiguration
      (\ s a -> s{_adcRuntimeConfiguration = a})

instance FromJSON AndroidDeviceCatalog where
        parseJSON
          = withObject "AndroidDeviceCatalog"
              (\ o ->
                 AndroidDeviceCatalog' <$>
                   (o .:? "versions" .!= mempty) <*>
                     (o .:? "models" .!= mempty)
                     <*> (o .:? "runtimeConfiguration"))

instance ToJSON AndroidDeviceCatalog where
        toJSON AndroidDeviceCatalog'{..}
          = object
              (catMaybes
                 [("versions" .=) <$> _adcVersions,
                  ("models" .=) <$> _adcModels,
                  ("runtimeConfiguration" .=) <$>
                    _adcRuntimeConfiguration])

-- | A description of how to run the test.
--
-- /See:/ 'testSpecification' smart constructor.
data TestSpecification =
  TestSpecification'
    { _tsIosTestSetup               :: !(Maybe IosTestSetup)
    , _tsTestTimeout                :: !(Maybe GDuration)
    , _tsAndroidRoboTest            :: !(Maybe AndroidRoboTest)
    , _tsDisableVideoRecording      :: !(Maybe Bool)
    , _tsAndroidInstrumentationTest :: !(Maybe AndroidInstrumentationTest)
    , _tsIosXcTest                  :: !(Maybe IosXcTest)
    , _tsDisablePerformanceMetrics  :: !(Maybe Bool)
    , _tsTestSetup                  :: !(Maybe TestSetup)
    , _tsAndroidTestLoop            :: !(Maybe AndroidTestLoop)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsIosTestSetup'
--
-- * 'tsTestTimeout'
--
-- * 'tsAndroidRoboTest'
--
-- * 'tsDisableVideoRecording'
--
-- * 'tsAndroidInstrumentationTest'
--
-- * 'tsIosXcTest'
--
-- * 'tsDisablePerformanceMetrics'
--
-- * 'tsTestSetup'
--
-- * 'tsAndroidTestLoop'
testSpecification
    :: TestSpecification
testSpecification =
  TestSpecification'
    { _tsIosTestSetup = Nothing
    , _tsTestTimeout = Nothing
    , _tsAndroidRoboTest = Nothing
    , _tsDisableVideoRecording = Nothing
    , _tsAndroidInstrumentationTest = Nothing
    , _tsIosXcTest = Nothing
    , _tsDisablePerformanceMetrics = Nothing
    , _tsTestSetup = Nothing
    , _tsAndroidTestLoop = Nothing
    }


-- | Test setup requirements for iOS.
tsIosTestSetup :: Lens' TestSpecification (Maybe IosTestSetup)
tsIosTestSetup
  = lens _tsIosTestSetup
      (\ s a -> s{_tsIosTestSetup = a})

-- | Max time a test execution is allowed to run before it is automatically
-- cancelled. The default value is 5 min.
tsTestTimeout :: Lens' TestSpecification (Maybe Scientific)
tsTestTimeout
  = lens _tsTestTimeout
      (\ s a -> s{_tsTestTimeout = a})
      . mapping _GDuration

-- | An Android robo test.
tsAndroidRoboTest :: Lens' TestSpecification (Maybe AndroidRoboTest)
tsAndroidRoboTest
  = lens _tsAndroidRoboTest
      (\ s a -> s{_tsAndroidRoboTest = a})

-- | Disables video recording; may reduce test latency.
tsDisableVideoRecording :: Lens' TestSpecification (Maybe Bool)
tsDisableVideoRecording
  = lens _tsDisableVideoRecording
      (\ s a -> s{_tsDisableVideoRecording = a})

-- | An Android instrumentation test.
tsAndroidInstrumentationTest :: Lens' TestSpecification (Maybe AndroidInstrumentationTest)
tsAndroidInstrumentationTest
  = lens _tsAndroidInstrumentationTest
      (\ s a -> s{_tsAndroidInstrumentationTest = a})

-- | An iOS XCTest, via an .xctestrun file.
tsIosXcTest :: Lens' TestSpecification (Maybe IosXcTest)
tsIosXcTest
  = lens _tsIosXcTest (\ s a -> s{_tsIosXcTest = a})

-- | Disables performance metrics recording; may reduce test latency.
tsDisablePerformanceMetrics :: Lens' TestSpecification (Maybe Bool)
tsDisablePerformanceMetrics
  = lens _tsDisablePerformanceMetrics
      (\ s a -> s{_tsDisablePerformanceMetrics = a})

-- | Test setup requirements for Android e.g. files to install, bootstrap
-- scripts.
tsTestSetup :: Lens' TestSpecification (Maybe TestSetup)
tsTestSetup
  = lens _tsTestSetup (\ s a -> s{_tsTestSetup = a})

-- | An Android Application with a Test Loop.
tsAndroidTestLoop :: Lens' TestSpecification (Maybe AndroidTestLoop)
tsAndroidTestLoop
  = lens _tsAndroidTestLoop
      (\ s a -> s{_tsAndroidTestLoop = a})

instance FromJSON TestSpecification where
        parseJSON
          = withObject "TestSpecification"
              (\ o ->
                 TestSpecification' <$>
                   (o .:? "iosTestSetup") <*> (o .:? "testTimeout") <*>
                     (o .:? "androidRoboTest")
                     <*> (o .:? "disableVideoRecording")
                     <*> (o .:? "androidInstrumentationTest")
                     <*> (o .:? "iosXcTest")
                     <*> (o .:? "disablePerformanceMetrics")
                     <*> (o .:? "testSetup")
                     <*> (o .:? "androidTestLoop"))

instance ToJSON TestSpecification where
        toJSON TestSpecification'{..}
          = object
              (catMaybes
                 [("iosTestSetup" .=) <$> _tsIosTestSetup,
                  ("testTimeout" .=) <$> _tsTestTimeout,
                  ("androidRoboTest" .=) <$> _tsAndroidRoboTest,
                  ("disableVideoRecording" .=) <$>
                    _tsDisableVideoRecording,
                  ("androidInstrumentationTest" .=) <$>
                    _tsAndroidInstrumentationTest,
                  ("iosXcTest" .=) <$> _tsIosXcTest,
                  ("disablePerformanceMetrics" .=) <$>
                    _tsDisablePerformanceMetrics,
                  ("testSetup" .=) <$> _tsTestSetup,
                  ("androidTestLoop" .=) <$> _tsAndroidTestLoop])

-- | The currently provided software environment on the devices under test.
--
-- /See:/ 'providedSoftwareCatalog' smart constructor.
newtype ProvidedSoftwareCatalog =
  ProvidedSoftwareCatalog'
    { _pscOrchestratorVersion :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProvidedSoftwareCatalog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscOrchestratorVersion'
providedSoftwareCatalog
    :: ProvidedSoftwareCatalog
providedSoftwareCatalog =
  ProvidedSoftwareCatalog' {_pscOrchestratorVersion = Nothing}


-- | A string representing the current version of Android Test Orchestrator
-- that is provided by TestExecutionService. Example: \"1.0.2 beta\".
pscOrchestratorVersion :: Lens' ProvidedSoftwareCatalog (Maybe Text)
pscOrchestratorVersion
  = lens _pscOrchestratorVersion
      (\ s a -> s{_pscOrchestratorVersion = a})

instance FromJSON ProvidedSoftwareCatalog where
        parseJSON
          = withObject "ProvidedSoftwareCatalog"
              (\ o ->
                 ProvidedSoftwareCatalog' <$>
                   (o .:? "orchestratorVersion"))

instance ToJSON ProvidedSoftwareCatalog where
        toJSON ProvidedSoftwareCatalog'{..}
          = object
              (catMaybes
                 [("orchestratorVersion" .=) <$>
                    _pscOrchestratorVersion])

-- | Network emulation parameters.
--
-- /See:/ 'trafficRule' smart constructor.
data TrafficRule =
  TrafficRule'
    { _trPacketLossRatio        :: !(Maybe (Textual Double))
    , _trPacketDuplicationRatio :: !(Maybe (Textual Double))
    , _trBandwidth              :: !(Maybe (Textual Double))
    , _trBurst                  :: !(Maybe (Textual Double))
    , _trDelay                  :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TrafficRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trPacketLossRatio'
--
-- * 'trPacketDuplicationRatio'
--
-- * 'trBandwidth'
--
-- * 'trBurst'
--
-- * 'trDelay'
trafficRule
    :: TrafficRule
trafficRule =
  TrafficRule'
    { _trPacketLossRatio = Nothing
    , _trPacketDuplicationRatio = Nothing
    , _trBandwidth = Nothing
    , _trBurst = Nothing
    , _trDelay = Nothing
    }


-- | Packet loss ratio (0.0 - 1.0).
trPacketLossRatio :: Lens' TrafficRule (Maybe Double)
trPacketLossRatio
  = lens _trPacketLossRatio
      (\ s a -> s{_trPacketLossRatio = a})
      . mapping _Coerce

-- | Packet duplication ratio (0.0 - 1.0).
trPacketDuplicationRatio :: Lens' TrafficRule (Maybe Double)
trPacketDuplicationRatio
  = lens _trPacketDuplicationRatio
      (\ s a -> s{_trPacketDuplicationRatio = a})
      . mapping _Coerce

-- | Bandwidth in kbits\/second.
trBandwidth :: Lens' TrafficRule (Maybe Double)
trBandwidth
  = lens _trBandwidth (\ s a -> s{_trBandwidth = a}) .
      mapping _Coerce

-- | Burst size in kbits.
trBurst :: Lens' TrafficRule (Maybe Double)
trBurst
  = lens _trBurst (\ s a -> s{_trBurst = a}) .
      mapping _Coerce

-- | Packet delay, must be >= 0.
trDelay :: Lens' TrafficRule (Maybe Scientific)
trDelay
  = lens _trDelay (\ s a -> s{_trDelay = a}) .
      mapping _GDuration

instance FromJSON TrafficRule where
        parseJSON
          = withObject "TrafficRule"
              (\ o ->
                 TrafficRule' <$>
                   (o .:? "packetLossRatio") <*>
                     (o .:? "packetDuplicationRatio")
                     <*> (o .:? "bandwidth")
                     <*> (o .:? "burst")
                     <*> (o .:? "delay"))

instance ToJSON TrafficRule where
        toJSON TrafficRule'{..}
          = object
              (catMaybes
                 [("packetLossRatio" .=) <$> _trPacketLossRatio,
                  ("packetDuplicationRatio" .=) <$>
                    _trPacketDuplicationRatio,
                  ("bandwidth" .=) <$> _trBandwidth,
                  ("burst" .=) <$> _trBurst,
                  ("delay" .=) <$> _trDelay])

-- | The currently supported iOS devices.
--
-- /See:/ 'iosDeviceCatalog' smart constructor.
data IosDeviceCatalog =
  IosDeviceCatalog'
    { _idcXcodeVersions        :: !(Maybe [XcodeVersion])
    , _idcVersions             :: !(Maybe [IosVersion])
    , _idcModels               :: !(Maybe [IosModel])
    , _idcRuntimeConfiguration :: !(Maybe IosRuntimeConfiguration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IosDeviceCatalog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idcXcodeVersions'
--
-- * 'idcVersions'
--
-- * 'idcModels'
--
-- * 'idcRuntimeConfiguration'
iosDeviceCatalog
    :: IosDeviceCatalog
iosDeviceCatalog =
  IosDeviceCatalog'
    { _idcXcodeVersions = Nothing
    , _idcVersions = Nothing
    , _idcModels = Nothing
    , _idcRuntimeConfiguration = Nothing
    }


-- | The set of supported Xcode versions.
idcXcodeVersions :: Lens' IosDeviceCatalog [XcodeVersion]
idcXcodeVersions
  = lens _idcXcodeVersions
      (\ s a -> s{_idcXcodeVersions = a})
      . _Default
      . _Coerce

-- | The set of supported iOS software versions.
idcVersions :: Lens' IosDeviceCatalog [IosVersion]
idcVersions
  = lens _idcVersions (\ s a -> s{_idcVersions = a}) .
      _Default
      . _Coerce

-- | The set of supported iOS device models.
idcModels :: Lens' IosDeviceCatalog [IosModel]
idcModels
  = lens _idcModels (\ s a -> s{_idcModels = a}) .
      _Default
      . _Coerce

-- | The set of supported runtime configurations.
idcRuntimeConfiguration :: Lens' IosDeviceCatalog (Maybe IosRuntimeConfiguration)
idcRuntimeConfiguration
  = lens _idcRuntimeConfiguration
      (\ s a -> s{_idcRuntimeConfiguration = a})

instance FromJSON IosDeviceCatalog where
        parseJSON
          = withObject "IosDeviceCatalog"
              (\ o ->
                 IosDeviceCatalog' <$>
                   (o .:? "xcodeVersions" .!= mempty) <*>
                     (o .:? "versions" .!= mempty)
                     <*> (o .:? "models" .!= mempty)
                     <*> (o .:? "runtimeConfiguration"))

instance ToJSON IosDeviceCatalog where
        toJSON IosDeviceCatalog'{..}
          = object
              (catMaybes
                 [("xcodeVersions" .=) <$> _idcXcodeVersions,
                  ("versions" .=) <$> _idcVersions,
                  ("models" .=) <$> _idcModels,
                  ("runtimeConfiguration" .=) <$>
                    _idcRuntimeConfiguration])

-- | Enables automatic Google account login. If set, the service will
-- automatically generate a Google test account and add it to the device,
-- before executing the test. Note that test accounts might be reused. Many
-- applications show their full set of functionalities when an account is
-- present on the device. Logging into the device with these generated
-- accounts allows testing more functionalities.
--
-- /See:/ 'googleAuto' smart constructor.
data GoogleAuto =
  GoogleAuto'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAuto' with the minimum fields required to make a request.
--
googleAuto
    :: GoogleAuto
googleAuto = GoogleAuto'


instance FromJSON GoogleAuto where
        parseJSON
          = withObject "GoogleAuto" (\ o -> pure GoogleAuto')

instance ToJSON GoogleAuto where
        toJSON = const emptyObject

-- | Identifies an account and how to log into it.
--
-- /See:/ 'account' smart constructor.
newtype Account =
  Account'
    { _aGoogleAuto :: Maybe GoogleAuto
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aGoogleAuto'
account
    :: Account
account = Account' {_aGoogleAuto = Nothing}


-- | An automatic google login account.
aGoogleAuto :: Lens' Account (Maybe GoogleAuto)
aGoogleAuto
  = lens _aGoogleAuto (\ s a -> s{_aGoogleAuto = a})

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o -> Account' <$> (o .:? "googleAuto"))

instance ToJSON Account where
        toJSON Account'{..}
          = object
              (catMaybes [("googleAuto" .=) <$> _aGoogleAuto])

-- | A starting intent specified by an action, uri, and categories.
--
-- /See:/ 'startActivityIntent' smart constructor.
data StartActivityIntent =
  StartActivityIntent'
    { _saiURI        :: !(Maybe Text)
    , _saiCategories :: !(Maybe [Text])
    , _saiAction     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartActivityIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saiURI'
--
-- * 'saiCategories'
--
-- * 'saiAction'
startActivityIntent
    :: StartActivityIntent
startActivityIntent =
  StartActivityIntent'
    {_saiURI = Nothing, _saiCategories = Nothing, _saiAction = Nothing}


-- | URI for the action.
saiURI :: Lens' StartActivityIntent (Maybe Text)
saiURI = lens _saiURI (\ s a -> s{_saiURI = a})

-- | Intent categories to set on the intent.
saiCategories :: Lens' StartActivityIntent [Text]
saiCategories
  = lens _saiCategories
      (\ s a -> s{_saiCategories = a})
      . _Default
      . _Coerce

-- | Action name. Required for START_ACTIVITY.
saiAction :: Lens' StartActivityIntent (Maybe Text)
saiAction
  = lens _saiAction (\ s a -> s{_saiAction = a})

instance FromJSON StartActivityIntent where
        parseJSON
          = withObject "StartActivityIntent"
              (\ o ->
                 StartActivityIntent' <$>
                   (o .:? "uri") <*> (o .:? "categories" .!= mempty) <*>
                     (o .:? "action"))

instance ToJSON StartActivityIntent where
        toJSON StartActivityIntent'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _saiURI,
                  ("categories" .=) <$> _saiCategories,
                  ("action" .=) <$> _saiAction])

-- | Message for specifying the start activities to crawl.
--
-- /See:/ 'roboStartingIntent' smart constructor.
data RoboStartingIntent =
  RoboStartingIntent'
    { _rsiLauncherActivity :: !(Maybe LauncherActivityIntent)
    , _rsiStartActivity    :: !(Maybe StartActivityIntent)
    , _rsiTimeout          :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoboStartingIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsiLauncherActivity'
--
-- * 'rsiStartActivity'
--
-- * 'rsiTimeout'
roboStartingIntent
    :: RoboStartingIntent
roboStartingIntent =
  RoboStartingIntent'
    { _rsiLauncherActivity = Nothing
    , _rsiStartActivity = Nothing
    , _rsiTimeout = Nothing
    }


rsiLauncherActivity :: Lens' RoboStartingIntent (Maybe LauncherActivityIntent)
rsiLauncherActivity
  = lens _rsiLauncherActivity
      (\ s a -> s{_rsiLauncherActivity = a})

rsiStartActivity :: Lens' RoboStartingIntent (Maybe StartActivityIntent)
rsiStartActivity
  = lens _rsiStartActivity
      (\ s a -> s{_rsiStartActivity = a})

-- | Timeout in seconds for each intent.
rsiTimeout :: Lens' RoboStartingIntent (Maybe Scientific)
rsiTimeout
  = lens _rsiTimeout (\ s a -> s{_rsiTimeout = a}) .
      mapping _GDuration

instance FromJSON RoboStartingIntent where
        parseJSON
          = withObject "RoboStartingIntent"
              (\ o ->
                 RoboStartingIntent' <$>
                   (o .:? "launcherActivity") <*>
                     (o .:? "startActivity")
                     <*> (o .:? "timeout"))

instance ToJSON RoboStartingIntent where
        toJSON RoboStartingIntent'{..}
          = object
              (catMaybes
                 [("launcherActivity" .=) <$> _rsiLauncherActivity,
                  ("startActivity" .=) <$> _rsiStartActivity,
                  ("timeout" .=) <$> _rsiTimeout])

-- | Represents a whole or partial calendar date, e.g. a birthday. The time
-- of day and time zone are either specified elsewhere or are not
-- significant. The date is relative to the Proleptic Gregorian Calendar.
-- This can represent: * A full date, with non-zero year, month and day
-- values * A month and day value, with a zero year, e.g. an anniversary *
-- A year on its own, with zero month and day values * A year and month
-- value, with a zero day, e.g. a credit card expiration date Related types
-- are google.type.TimeOfDay and \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay   :: !(Maybe (Textual Int32))
    , _dYear  :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year by itself or a year and month where the day is
-- not significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of year. Must be from 1 to 12, or 0 if specifying a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | A file or directory to install on the device before the test starts.
--
-- /See:/ 'regularFile' smart constructor.
data RegularFile =
  RegularFile'
    { _rfDevicePath :: !(Maybe Text)
    , _rfContent    :: !(Maybe FileReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegularFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfDevicePath'
--
-- * 'rfContent'
regularFile
    :: RegularFile
regularFile = RegularFile' {_rfDevicePath = Nothing, _rfContent = Nothing}


-- | Required. Where to put the content on the device. Must be an absolute,
-- whitelisted path. If the file exists, it will be replaced. The following
-- device-side directories and any of their subdirectories are whitelisted:
--
-- ${EXTERNAL_STORAGE}, or \/sdcard
--
-- ${ANDROID_DATA}\/local\/tmp, or \/data\/local\/tmp
--
-- Specifying a path outside of these directory trees is invalid.
--
-- The paths \/sdcard and \/data will be made available and treated as
-- implicit path substitutions. E.g. if \/sdcard on a particular device
-- does not map to external storage, the system will replace it with the
-- external storage path prefix for that device and copy the file there.
--
-- It is strongly advised to use the
-- <http://developer.android.com/reference/android/os/Environment.html Environment API>
-- in app and test code to access files on the device in a portable way.
rfDevicePath :: Lens' RegularFile (Maybe Text)
rfDevicePath
  = lens _rfDevicePath (\ s a -> s{_rfDevicePath = a})

-- | Required. The source file.
rfContent :: Lens' RegularFile (Maybe FileReference)
rfContent
  = lens _rfContent (\ s a -> s{_rfContent = a})

instance FromJSON RegularFile where
        parseJSON
          = withObject "RegularFile"
              (\ o ->
                 RegularFile' <$>
                   (o .:? "devicePath") <*> (o .:? "content"))

instance ToJSON RegularFile where
        toJSON RegularFile'{..}
          = object
              (catMaybes
                 [("devicePath" .=) <$> _rfDevicePath,
                  ("content" .=) <$> _rfContent])

-- | A description of an Android device tests may be run on.
--
-- /See:/ 'androidModel' smart constructor.
data AndroidModel =
  AndroidModel'
    { _amSupportedAbis        :: !(Maybe [Text])
    , _amManufacturer         :: !(Maybe Text)
    , _amCodename             :: !(Maybe Text)
    , _amLowFpsVideoRecording :: !(Maybe Bool)
    , _amFormFactor           :: !(Maybe AndroidModelFormFactor)
    , _amBrand                :: !(Maybe Text)
    , _amScreenX              :: !(Maybe (Textual Int32))
    , _amScreenDensity        :: !(Maybe (Textual Int32))
    , _amName                 :: !(Maybe Text)
    , _amSupportedVersionIds  :: !(Maybe [Text])
    , _amScreenY              :: !(Maybe (Textual Int32))
    , _amId                   :: !(Maybe Text)
    , _amForm                 :: !(Maybe AndroidModelForm)
    , _amTags                 :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amSupportedAbis'
--
-- * 'amManufacturer'
--
-- * 'amCodename'
--
-- * 'amLowFpsVideoRecording'
--
-- * 'amFormFactor'
--
-- * 'amBrand'
--
-- * 'amScreenX'
--
-- * 'amScreenDensity'
--
-- * 'amName'
--
-- * 'amSupportedVersionIds'
--
-- * 'amScreenY'
--
-- * 'amId'
--
-- * 'amForm'
--
-- * 'amTags'
androidModel
    :: AndroidModel
androidModel =
  AndroidModel'
    { _amSupportedAbis = Nothing
    , _amManufacturer = Nothing
    , _amCodename = Nothing
    , _amLowFpsVideoRecording = Nothing
    , _amFormFactor = Nothing
    , _amBrand = Nothing
    , _amScreenX = Nothing
    , _amScreenDensity = Nothing
    , _amName = Nothing
    , _amSupportedVersionIds = Nothing
    , _amScreenY = Nothing
    , _amId = Nothing
    , _amForm = Nothing
    , _amTags = Nothing
    }


-- | The list of supported ABIs for this device. This corresponds to either
-- android.os.Build.SUPPORTED_ABIS (for API level 21 and above) or
-- android.os.Build.CPU_ABI\/CPU_ABI2. The most preferred ABI is the first
-- element in the list. Elements are optionally prefixed by \"version_id:\"
-- (where version_id is the id of an AndroidVersion), denoting an ABI that
-- is supported only on a particular version.
amSupportedAbis :: Lens' AndroidModel [Text]
amSupportedAbis
  = lens _amSupportedAbis
      (\ s a -> s{_amSupportedAbis = a})
      . _Default
      . _Coerce

-- | The manufacturer of this device.
amManufacturer :: Lens' AndroidModel (Maybe Text)
amManufacturer
  = lens _amManufacturer
      (\ s a -> s{_amManufacturer = a})

-- | The name of the industrial design. This corresponds to
-- android.os.Build.DEVICE.
amCodename :: Lens' AndroidModel (Maybe Text)
amCodename
  = lens _amCodename (\ s a -> s{_amCodename = a})

-- | True if and only if tests with this model are recorded by stitching
-- together screenshots. See use_low_spec_video_recording in device config.
amLowFpsVideoRecording :: Lens' AndroidModel (Maybe Bool)
amLowFpsVideoRecording
  = lens _amLowFpsVideoRecording
      (\ s a -> s{_amLowFpsVideoRecording = a})

-- | Whether this device is a phone, tablet, wearable, etc.
amFormFactor :: Lens' AndroidModel (Maybe AndroidModelFormFactor)
amFormFactor
  = lens _amFormFactor (\ s a -> s{_amFormFactor = a})

-- | The company that this device is branded with. Example: \"Google\",
-- \"Samsung\".
amBrand :: Lens' AndroidModel (Maybe Text)
amBrand = lens _amBrand (\ s a -> s{_amBrand = a})

-- | Screen size in the horizontal (X) dimension measured in pixels.
amScreenX :: Lens' AndroidModel (Maybe Int32)
amScreenX
  = lens _amScreenX (\ s a -> s{_amScreenX = a}) .
      mapping _Coerce

-- | Screen density in DPI. This corresponds to ro.sf.lcd_density
amScreenDensity :: Lens' AndroidModel (Maybe Int32)
amScreenDensity
  = lens _amScreenDensity
      (\ s a -> s{_amScreenDensity = a})
      . mapping _Coerce

-- | The human-readable marketing name for this device model. Examples:
-- \"Nexus 5\", \"Galaxy S5\".
amName :: Lens' AndroidModel (Maybe Text)
amName = lens _amName (\ s a -> s{_amName = a})

-- | The set of Android versions this device supports.
amSupportedVersionIds :: Lens' AndroidModel [Text]
amSupportedVersionIds
  = lens _amSupportedVersionIds
      (\ s a -> s{_amSupportedVersionIds = a})
      . _Default
      . _Coerce

-- | Screen size in the vertical (Y) dimension measured in pixels.
amScreenY :: Lens' AndroidModel (Maybe Int32)
amScreenY
  = lens _amScreenY (\ s a -> s{_amScreenY = a}) .
      mapping _Coerce

-- | The unique opaque id for this model. Use this for invoking the
-- TestExecutionService.
amId :: Lens' AndroidModel (Maybe Text)
amId = lens _amId (\ s a -> s{_amId = a})

-- | Whether this device is virtual or physical.
amForm :: Lens' AndroidModel (Maybe AndroidModelForm)
amForm = lens _amForm (\ s a -> s{_amForm = a})

-- | Tags for this dimension. Examples: \"default\", \"preview\",
-- \"deprecated\".
amTags :: Lens' AndroidModel [Text]
amTags
  = lens _amTags (\ s a -> s{_amTags = a}) . _Default .
      _Coerce

instance FromJSON AndroidModel where
        parseJSON
          = withObject "AndroidModel"
              (\ o ->
                 AndroidModel' <$>
                   (o .:? "supportedAbis" .!= mempty) <*>
                     (o .:? "manufacturer")
                     <*> (o .:? "codename")
                     <*> (o .:? "lowFpsVideoRecording")
                     <*> (o .:? "formFactor")
                     <*> (o .:? "brand")
                     <*> (o .:? "screenX")
                     <*> (o .:? "screenDensity")
                     <*> (o .:? "name")
                     <*> (o .:? "supportedVersionIds" .!= mempty)
                     <*> (o .:? "screenY")
                     <*> (o .:? "id")
                     <*> (o .:? "form")
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON AndroidModel where
        toJSON AndroidModel'{..}
          = object
              (catMaybes
                 [("supportedAbis" .=) <$> _amSupportedAbis,
                  ("manufacturer" .=) <$> _amManufacturer,
                  ("codename" .=) <$> _amCodename,
                  ("lowFpsVideoRecording" .=) <$>
                    _amLowFpsVideoRecording,
                  ("formFactor" .=) <$> _amFormFactor,
                  ("brand" .=) <$> _amBrand,
                  ("screenX" .=) <$> _amScreenX,
                  ("screenDensity" .=) <$> _amScreenDensity,
                  ("name" .=) <$> _amName,
                  ("supportedVersionIds" .=) <$>
                    _amSupportedVersionIds,
                  ("screenY" .=) <$> _amScreenY, ("id" .=) <$> _amId,
                  ("form" .=) <$> _amForm, ("tags" .=) <$> _amTags])

-- | Information about the client which invoked the test.
--
-- /See:/ 'clientInfo' smart constructor.
data ClientInfo =
  ClientInfo'
    { _ciName              :: !(Maybe Text)
    , _ciClientInfoDetails :: !(Maybe [ClientInfoDetail])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClientInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciName'
--
-- * 'ciClientInfoDetails'
clientInfo
    :: ClientInfo
clientInfo = ClientInfo' {_ciName = Nothing, _ciClientInfoDetails = Nothing}


-- | Required. Client name, such as gcloud.
ciName :: Lens' ClientInfo (Maybe Text)
ciName = lens _ciName (\ s a -> s{_ciName = a})

-- | The list of detailed information about client.
ciClientInfoDetails :: Lens' ClientInfo [ClientInfoDetail]
ciClientInfoDetails
  = lens _ciClientInfoDetails
      (\ s a -> s{_ciClientInfoDetails = a})
      . _Default
      . _Coerce

instance FromJSON ClientInfo where
        parseJSON
          = withObject "ClientInfo"
              (\ o ->
                 ClientInfo' <$>
                   (o .:? "name") <*>
                     (o .:? "clientInfoDetails" .!= mempty))

instance ToJSON ClientInfo where
        toJSON ClientInfo'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ciName,
                  ("clientInfoDetails" .=) <$> _ciClientInfoDetails])

-- | An Android app manifest. See
-- http:\/\/developer.android.com\/guide\/topics\/manifest\/manifest-intro.html
--
-- /See:/ 'aPKManifest' smart constructor.
data APKManifest =
  APKManifest'
    { _apkmApplicationLabel :: !(Maybe Text)
    , _apkmMinSdkVersion    :: !(Maybe (Textual Int32))
    , _apkmTargetSdkVersion :: !(Maybe (Textual Int32))
    , _apkmPackageName      :: !(Maybe Text)
    , _apkmIntentFilters    :: !(Maybe [IntentFilter])
    , _apkmMaxSdkVersion    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APKManifest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkmApplicationLabel'
--
-- * 'apkmMinSdkVersion'
--
-- * 'apkmTargetSdkVersion'
--
-- * 'apkmPackageName'
--
-- * 'apkmIntentFilters'
--
-- * 'apkmMaxSdkVersion'
aPKManifest
    :: APKManifest
aPKManifest =
  APKManifest'
    { _apkmApplicationLabel = Nothing
    , _apkmMinSdkVersion = Nothing
    , _apkmTargetSdkVersion = Nothing
    , _apkmPackageName = Nothing
    , _apkmIntentFilters = Nothing
    , _apkmMaxSdkVersion = Nothing
    }


-- | User-readable name for the application.
apkmApplicationLabel :: Lens' APKManifest (Maybe Text)
apkmApplicationLabel
  = lens _apkmApplicationLabel
      (\ s a -> s{_apkmApplicationLabel = a})

-- | Minimum API level required for the application to run.
apkmMinSdkVersion :: Lens' APKManifest (Maybe Int32)
apkmMinSdkVersion
  = lens _apkmMinSdkVersion
      (\ s a -> s{_apkmMinSdkVersion = a})
      . mapping _Coerce

-- | Specifies the API Level on which the application is designed to run.
apkmTargetSdkVersion :: Lens' APKManifest (Maybe Int32)
apkmTargetSdkVersion
  = lens _apkmTargetSdkVersion
      (\ s a -> s{_apkmTargetSdkVersion = a})
      . mapping _Coerce

-- | Full Java-style package name for this application, e.g.
-- \"com.example.foo\".
apkmPackageName :: Lens' APKManifest (Maybe Text)
apkmPackageName
  = lens _apkmPackageName
      (\ s a -> s{_apkmPackageName = a})

apkmIntentFilters :: Lens' APKManifest [IntentFilter]
apkmIntentFilters
  = lens _apkmIntentFilters
      (\ s a -> s{_apkmIntentFilters = a})
      . _Default
      . _Coerce

-- | Maximum API level on which the application is designed to run.
apkmMaxSdkVersion :: Lens' APKManifest (Maybe Int32)
apkmMaxSdkVersion
  = lens _apkmMaxSdkVersion
      (\ s a -> s{_apkmMaxSdkVersion = a})
      . mapping _Coerce

instance FromJSON APKManifest where
        parseJSON
          = withObject "APKManifest"
              (\ o ->
                 APKManifest' <$>
                   (o .:? "applicationLabel") <*>
                     (o .:? "minSdkVersion")
                     <*> (o .:? "targetSdkVersion")
                     <*> (o .:? "packageName")
                     <*> (o .:? "intentFilters" .!= mempty)
                     <*> (o .:? "maxSdkVersion"))

instance ToJSON APKManifest where
        toJSON APKManifest'{..}
          = object
              (catMaybes
                 [("applicationLabel" .=) <$> _apkmApplicationLabel,
                  ("minSdkVersion" .=) <$> _apkmMinSdkVersion,
                  ("targetSdkVersion" .=) <$> _apkmTargetSdkVersion,
                  ("packageName" .=) <$> _apkmPackageName,
                  ("intentFilters" .=) <$> _apkmIntentFilters,
                  ("maxSdkVersion" .=) <$> _apkmMaxSdkVersion])

-- | An Android App Bundle file format, containing a BundleConfig.pb file, a
-- base module directory, zero or more dynamic feature module directories.
--
-- See https:\/\/developer.android.com\/guide\/app-bundle\/build for
-- guidance on building App Bundles.
--
-- /See:/ 'appBundle' smart constructor.
newtype AppBundle =
  AppBundle'
    { _abBundleLocation :: Maybe FileReference
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abBundleLocation'
appBundle
    :: AppBundle
appBundle = AppBundle' {_abBundleLocation = Nothing}


-- | .aab file representing the app bundle under test.
abBundleLocation :: Lens' AppBundle (Maybe FileReference)
abBundleLocation
  = lens _abBundleLocation
      (\ s a -> s{_abBundleLocation = a})

instance FromJSON AppBundle where
        parseJSON
          = withObject "AppBundle"
              (\ o -> AppBundle' <$> (o .:? "bundleLocation"))

instance ToJSON AppBundle where
        toJSON AppBundle'{..}
          = object
              (catMaybes
                 [("bundleLocation" .=) <$> _abBundleLocation])

-- | A test of an Android application that can control an Android component
-- independently of its normal lifecycle. Android instrumentation tests run
-- an application APK and test APK inside the same process on a virtual or
-- physical AndroidDevice. They also specify a test runner class, such as
-- com.google.GoogleTestRunner, which can vary on the specific
-- instrumentation framework chosen. See for more information on types of
-- Android tests.
--
-- /See:/ 'androidInstrumentationTest' smart constructor.
data AndroidInstrumentationTest =
  AndroidInstrumentationTest'
    { _aitTestTargets        :: !(Maybe [Text])
    , _aitTestRunnerClass    :: !(Maybe Text)
    , _aitAppPackageId       :: !(Maybe Text)
    , _aitTestAPK            :: !(Maybe FileReference)
    , _aitOrchestratorOption :: !(Maybe AndroidInstrumentationTestOrchestratorOption)
    , _aitAppBundle          :: !(Maybe AppBundle)
    , _aitAppAPK             :: !(Maybe FileReference)
    , _aitTestPackageId      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidInstrumentationTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aitTestTargets'
--
-- * 'aitTestRunnerClass'
--
-- * 'aitAppPackageId'
--
-- * 'aitTestAPK'
--
-- * 'aitOrchestratorOption'
--
-- * 'aitAppBundle'
--
-- * 'aitAppAPK'
--
-- * 'aitTestPackageId'
androidInstrumentationTest
    :: AndroidInstrumentationTest
androidInstrumentationTest =
  AndroidInstrumentationTest'
    { _aitTestTargets = Nothing
    , _aitTestRunnerClass = Nothing
    , _aitAppPackageId = Nothing
    , _aitTestAPK = Nothing
    , _aitOrchestratorOption = Nothing
    , _aitAppBundle = Nothing
    , _aitAppAPK = Nothing
    , _aitTestPackageId = Nothing
    }


-- | Each target must be fully qualified with the package name or class name,
-- in one of these formats: - \"package package_name\" - \"class
-- package_name.class_name\" - \"class
-- package_name.class_name#method_name\" If empty, all targets in the
-- module will be run.
aitTestTargets :: Lens' AndroidInstrumentationTest [Text]
aitTestTargets
  = lens _aitTestTargets
      (\ s a -> s{_aitTestTargets = a})
      . _Default
      . _Coerce

-- | The InstrumentationTestRunner class. The default value is determined by
-- examining the application\'s manifest.
aitTestRunnerClass :: Lens' AndroidInstrumentationTest (Maybe Text)
aitTestRunnerClass
  = lens _aitTestRunnerClass
      (\ s a -> s{_aitTestRunnerClass = a})

-- | The java package for the application under test. The default value is
-- determined by examining the application\'s manifest.
aitAppPackageId :: Lens' AndroidInstrumentationTest (Maybe Text)
aitAppPackageId
  = lens _aitAppPackageId
      (\ s a -> s{_aitAppPackageId = a})

-- | Required. The APK containing the test code to be executed.
aitTestAPK :: Lens' AndroidInstrumentationTest (Maybe FileReference)
aitTestAPK
  = lens _aitTestAPK (\ s a -> s{_aitTestAPK = a})

-- | The option of whether running each test within its own invocation of
-- instrumentation with Android Test Orchestrator or not. ** Orchestrator
-- is only compatible with AndroidJUnitRunner version 1.0 or higher! **
-- Orchestrator offers the following benefits: - No shared state - Crashes
-- are isolated - Logs are scoped per test See for more information about
-- Android Test Orchestrator. If not set, the test will be run without the
-- orchestrator.
aitOrchestratorOption :: Lens' AndroidInstrumentationTest (Maybe AndroidInstrumentationTestOrchestratorOption)
aitOrchestratorOption
  = lens _aitOrchestratorOption
      (\ s a -> s{_aitOrchestratorOption = a})

-- | A multi-apk app bundle for the application under test.
aitAppBundle :: Lens' AndroidInstrumentationTest (Maybe AppBundle)
aitAppBundle
  = lens _aitAppBundle (\ s a -> s{_aitAppBundle = a})

-- | The APK for the application under test.
aitAppAPK :: Lens' AndroidInstrumentationTest (Maybe FileReference)
aitAppAPK
  = lens _aitAppAPK (\ s a -> s{_aitAppAPK = a})

-- | The java package for the test to be executed. The default value is
-- determined by examining the application\'s manifest.
aitTestPackageId :: Lens' AndroidInstrumentationTest (Maybe Text)
aitTestPackageId
  = lens _aitTestPackageId
      (\ s a -> s{_aitTestPackageId = a})

instance FromJSON AndroidInstrumentationTest where
        parseJSON
          = withObject "AndroidInstrumentationTest"
              (\ o ->
                 AndroidInstrumentationTest' <$>
                   (o .:? "testTargets" .!= mempty) <*>
                     (o .:? "testRunnerClass")
                     <*> (o .:? "appPackageId")
                     <*> (o .:? "testApk")
                     <*> (o .:? "orchestratorOption")
                     <*> (o .:? "appBundle")
                     <*> (o .:? "appApk")
                     <*> (o .:? "testPackageId"))

instance ToJSON AndroidInstrumentationTest where
        toJSON AndroidInstrumentationTest'{..}
          = object
              (catMaybes
                 [("testTargets" .=) <$> _aitTestTargets,
                  ("testRunnerClass" .=) <$> _aitTestRunnerClass,
                  ("appPackageId" .=) <$> _aitAppPackageId,
                  ("testApk" .=) <$> _aitTestAPK,
                  ("orchestratorOption" .=) <$> _aitOrchestratorOption,
                  ("appBundle" .=) <$> _aitAppBundle,
                  ("appApk" .=) <$> _aitAppAPK,
                  ("testPackageId" .=) <$> _aitTestPackageId])

-- | A group of one or more TestExecutions, built by taking a product of
-- values over a pre-defined set of axes.
--
-- /See:/ 'testMatrix' smart constructor.
data TestMatrix =
  TestMatrix'
    { _tmState                :: !(Maybe TestMatrixState)
    , _tmTestMatrixId         :: !(Maybe Text)
    , _tmTestSpecification    :: !(Maybe TestSpecification)
    , _tmFlakyTestAttempts    :: !(Maybe (Textual Int32))
    , _tmClientInfo           :: !(Maybe ClientInfo)
    , _tmTestExecutions       :: !(Maybe [TestExecution])
    , _tmResultStorage        :: !(Maybe ResultStorage)
    , _tmInvalidMatrixDetails :: !(Maybe TestMatrixInvalidMatrixDetails)
    , _tmProjectId            :: !(Maybe Text)
    , _tmEnvironmentMatrix    :: !(Maybe EnvironmentMatrix)
    , _tmTimestamp            :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestMatrix' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmState'
--
-- * 'tmTestMatrixId'
--
-- * 'tmTestSpecification'
--
-- * 'tmFlakyTestAttempts'
--
-- * 'tmClientInfo'
--
-- * 'tmTestExecutions'
--
-- * 'tmResultStorage'
--
-- * 'tmInvalidMatrixDetails'
--
-- * 'tmProjectId'
--
-- * 'tmEnvironmentMatrix'
--
-- * 'tmTimestamp'
testMatrix
    :: TestMatrix
testMatrix =
  TestMatrix'
    { _tmState = Nothing
    , _tmTestMatrixId = Nothing
    , _tmTestSpecification = Nothing
    , _tmFlakyTestAttempts = Nothing
    , _tmClientInfo = Nothing
    , _tmTestExecutions = Nothing
    , _tmResultStorage = Nothing
    , _tmInvalidMatrixDetails = Nothing
    , _tmProjectId = Nothing
    , _tmEnvironmentMatrix = Nothing
    , _tmTimestamp = Nothing
    }


-- | Output only. Indicates the current progress of the test matrix (e.g.,
-- FINISHED).
tmState :: Lens' TestMatrix (Maybe TestMatrixState)
tmState = lens _tmState (\ s a -> s{_tmState = a})

-- | Output only. Unique id set by the service.
tmTestMatrixId :: Lens' TestMatrix (Maybe Text)
tmTestMatrixId
  = lens _tmTestMatrixId
      (\ s a -> s{_tmTestMatrixId = a})

-- | Required. How to run the test.
tmTestSpecification :: Lens' TestMatrix (Maybe TestSpecification)
tmTestSpecification
  = lens _tmTestSpecification
      (\ s a -> s{_tmTestSpecification = a})

-- | The number of times a TestExecution should be re-attempted if one or
-- more of its test cases fail for any reason. The maximum number of reruns
-- allowed is 10. Default is 0, which implies no reruns.
tmFlakyTestAttempts :: Lens' TestMatrix (Maybe Int32)
tmFlakyTestAttempts
  = lens _tmFlakyTestAttempts
      (\ s a -> s{_tmFlakyTestAttempts = a})
      . mapping _Coerce

-- | Information about the client which invoked the test.
tmClientInfo :: Lens' TestMatrix (Maybe ClientInfo)
tmClientInfo
  = lens _tmClientInfo (\ s a -> s{_tmClientInfo = a})

-- | Output only. The list of test executions that the service creates for
-- this matrix.
tmTestExecutions :: Lens' TestMatrix [TestExecution]
tmTestExecutions
  = lens _tmTestExecutions
      (\ s a -> s{_tmTestExecutions = a})
      . _Default
      . _Coerce

-- | Required. Where the results for the matrix are written.
tmResultStorage :: Lens' TestMatrix (Maybe ResultStorage)
tmResultStorage
  = lens _tmResultStorage
      (\ s a -> s{_tmResultStorage = a})

-- | Output only. Describes why the matrix is considered invalid. Only useful
-- for matrices in the INVALID state.
tmInvalidMatrixDetails :: Lens' TestMatrix (Maybe TestMatrixInvalidMatrixDetails)
tmInvalidMatrixDetails
  = lens _tmInvalidMatrixDetails
      (\ s a -> s{_tmInvalidMatrixDetails = a})

-- | The cloud project that owns the test matrix.
tmProjectId :: Lens' TestMatrix (Maybe Text)
tmProjectId
  = lens _tmProjectId (\ s a -> s{_tmProjectId = a})

-- | Required. How the host machine(s) are configured.
tmEnvironmentMatrix :: Lens' TestMatrix (Maybe EnvironmentMatrix)
tmEnvironmentMatrix
  = lens _tmEnvironmentMatrix
      (\ s a -> s{_tmEnvironmentMatrix = a})

-- | Output only. The time this test matrix was initially created.
tmTimestamp :: Lens' TestMatrix (Maybe UTCTime)
tmTimestamp
  = lens _tmTimestamp (\ s a -> s{_tmTimestamp = a}) .
      mapping _DateTime

instance FromJSON TestMatrix where
        parseJSON
          = withObject "TestMatrix"
              (\ o ->
                 TestMatrix' <$>
                   (o .:? "state") <*> (o .:? "testMatrixId") <*>
                     (o .:? "testSpecification")
                     <*> (o .:? "flakyTestAttempts")
                     <*> (o .:? "clientInfo")
                     <*> (o .:? "testExecutions" .!= mempty)
                     <*> (o .:? "resultStorage")
                     <*> (o .:? "invalidMatrixDetails")
                     <*> (o .:? "projectId")
                     <*> (o .:? "environmentMatrix")
                     <*> (o .:? "timestamp"))

instance ToJSON TestMatrix where
        toJSON TestMatrix'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _tmState,
                  ("testMatrixId" .=) <$> _tmTestMatrixId,
                  ("testSpecification" .=) <$> _tmTestSpecification,
                  ("flakyTestAttempts" .=) <$> _tmFlakyTestAttempts,
                  ("clientInfo" .=) <$> _tmClientInfo,
                  ("testExecutions" .=) <$> _tmTestExecutions,
                  ("resultStorage" .=) <$> _tmResultStorage,
                  ("invalidMatrixDetails" .=) <$>
                    _tmInvalidMatrixDetails,
                  ("projectId" .=) <$> _tmProjectId,
                  ("environmentMatrix" .=) <$> _tmEnvironmentMatrix,
                  ("timestamp" .=) <$> _tmTimestamp])

-- | Response containing the current state of the specified test matrix.
--
-- /See:/ 'cancelTestMatrixResponse' smart constructor.
newtype CancelTestMatrixResponse =
  CancelTestMatrixResponse'
    { _ctmrTestState :: Maybe CancelTestMatrixResponseTestState
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelTestMatrixResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctmrTestState'
cancelTestMatrixResponse
    :: CancelTestMatrixResponse
cancelTestMatrixResponse = CancelTestMatrixResponse' {_ctmrTestState = Nothing}


-- | The current rolled-up state of the test matrix. If this state is already
-- final, then the cancelation request will have no effect.
ctmrTestState :: Lens' CancelTestMatrixResponse (Maybe CancelTestMatrixResponseTestState)
ctmrTestState
  = lens _ctmrTestState
      (\ s a -> s{_ctmrTestState = a})

instance FromJSON CancelTestMatrixResponse where
        parseJSON
          = withObject "CancelTestMatrixResponse"
              (\ o ->
                 CancelTestMatrixResponse' <$> (o .:? "testState"))

instance ToJSON CancelTestMatrixResponse where
        toJSON CancelTestMatrixResponse'{..}
          = object
              (catMaybes [("testState" .=) <$> _ctmrTestState])

-- | Represents a tool results execution resource. This has the results of a
-- TestMatrix.
--
-- /See:/ 'toolResultsExecution' smart constructor.
data ToolResultsExecution =
  ToolResultsExecution'
    { _treExecutionId :: !(Maybe Text)
    , _treHistoryId   :: !(Maybe Text)
    , _treProjectId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ToolResultsExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'treExecutionId'
--
-- * 'treHistoryId'
--
-- * 'treProjectId'
toolResultsExecution
    :: ToolResultsExecution
toolResultsExecution =
  ToolResultsExecution'
    { _treExecutionId = Nothing
    , _treHistoryId = Nothing
    , _treProjectId = Nothing
    }


-- | Output only. A tool results execution ID.
treExecutionId :: Lens' ToolResultsExecution (Maybe Text)
treExecutionId
  = lens _treExecutionId
      (\ s a -> s{_treExecutionId = a})

-- | Output only. A tool results history ID.
treHistoryId :: Lens' ToolResultsExecution (Maybe Text)
treHistoryId
  = lens _treHistoryId (\ s a -> s{_treHistoryId = a})

-- | Output only. The cloud project that owns the tool results execution.
treProjectId :: Lens' ToolResultsExecution (Maybe Text)
treProjectId
  = lens _treProjectId (\ s a -> s{_treProjectId = a})

instance FromJSON ToolResultsExecution where
        parseJSON
          = withObject "ToolResultsExecution"
              (\ o ->
                 ToolResultsExecution' <$>
                   (o .:? "executionId") <*> (o .:? "historyId") <*>
                     (o .:? "projectId"))

instance ToJSON ToolResultsExecution where
        toJSON ToolResultsExecution'{..}
          = object
              (catMaybes
                 [("executionId" .=) <$> _treExecutionId,
                  ("historyId" .=) <$> _treHistoryId,
                  ("projectId" .=) <$> _treProjectId])

-- | A test of an iOS application that uses the XCTest framework. Xcode
-- supports the option to \"build for testing\", which generates an
-- .xctestrun file that contains a test specification (arguments, test
-- methods, etc). This test type accepts a zip file containing the
-- .xctestrun file and the corresponding contents of the Build\/Products
-- directory that contains all the binaries needed to run the tests.
--
-- /See:/ 'iosXcTest' smart constructor.
data IosXcTest =
  IosXcTest'
    { _ixtXctestrun    :: !(Maybe FileReference)
    , _ixtXcodeVersion :: !(Maybe Text)
    , _ixtAppBundleId  :: !(Maybe Text)
    , _ixtTestsZip     :: !(Maybe FileReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IosXcTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ixtXctestrun'
--
-- * 'ixtXcodeVersion'
--
-- * 'ixtAppBundleId'
--
-- * 'ixtTestsZip'
iosXcTest
    :: IosXcTest
iosXcTest =
  IosXcTest'
    { _ixtXctestrun = Nothing
    , _ixtXcodeVersion = Nothing
    , _ixtAppBundleId = Nothing
    , _ixtTestsZip = Nothing
    }


-- | An .xctestrun file that will override the .xctestrun file in the tests
-- zip. Because the .xctestrun file contains environment variables along
-- with test methods to run and\/or ignore, this can be useful for sharding
-- tests. Default is taken from the tests zip.
ixtXctestrun :: Lens' IosXcTest (Maybe FileReference)
ixtXctestrun
  = lens _ixtXctestrun (\ s a -> s{_ixtXctestrun = a})

-- | The Xcode version that should be used for the test. Use the
-- TestEnvironmentDiscoveryService to get supported options. Defaults to
-- the latest Xcode version Firebase Test Lab supports.
ixtXcodeVersion :: Lens' IosXcTest (Maybe Text)
ixtXcodeVersion
  = lens _ixtXcodeVersion
      (\ s a -> s{_ixtXcodeVersion = a})

-- | Output only. The bundle id for the application under test.
ixtAppBundleId :: Lens' IosXcTest (Maybe Text)
ixtAppBundleId
  = lens _ixtAppBundleId
      (\ s a -> s{_ixtAppBundleId = a})

-- | Required. The .zip containing the .xctestrun file and the contents of
-- the DerivedData\/Build\/Products directory. The .xctestrun file in this
-- zip is ignored if the xctestrun field is specified.
ixtTestsZip :: Lens' IosXcTest (Maybe FileReference)
ixtTestsZip
  = lens _ixtTestsZip (\ s a -> s{_ixtTestsZip = a})

instance FromJSON IosXcTest where
        parseJSON
          = withObject "IosXcTest"
              (\ o ->
                 IosXcTest' <$>
                   (o .:? "xctestrun") <*> (o .:? "xcodeVersion") <*>
                     (o .:? "appBundleId")
                     <*> (o .:? "testsZip"))

instance ToJSON IosXcTest where
        toJSON IosXcTest'{..}
          = object
              (catMaybes
                 [("xctestrun" .=) <$> _ixtXctestrun,
                  ("xcodeVersion" .=) <$> _ixtXcodeVersion,
                  ("appBundleId" .=) <$> _ixtAppBundleId,
                  ("testsZip" .=) <$> _ixtTestsZip])

-- | Locations where the results of running the test are stored.
--
-- /See:/ 'resultStorage' smart constructor.
data ResultStorage =
  ResultStorage'
    { _rsToolResultsHistory   :: !(Maybe ToolResultsHistory)
    , _rsToolResultsExecution :: !(Maybe ToolResultsExecution)
    , _rsGoogleCloudStorage   :: !(Maybe GoogleCloudStorage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultStorage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsToolResultsHistory'
--
-- * 'rsToolResultsExecution'
--
-- * 'rsGoogleCloudStorage'
resultStorage
    :: ResultStorage
resultStorage =
  ResultStorage'
    { _rsToolResultsHistory = Nothing
    , _rsToolResultsExecution = Nothing
    , _rsGoogleCloudStorage = Nothing
    }


-- | The tool results history that contains the tool results execution that
-- results are written to. If not provided, the service will choose an
-- appropriate value.
rsToolResultsHistory :: Lens' ResultStorage (Maybe ToolResultsHistory)
rsToolResultsHistory
  = lens _rsToolResultsHistory
      (\ s a -> s{_rsToolResultsHistory = a})

-- | Output only. The tool results execution that results are written to.
rsToolResultsExecution :: Lens' ResultStorage (Maybe ToolResultsExecution)
rsToolResultsExecution
  = lens _rsToolResultsExecution
      (\ s a -> s{_rsToolResultsExecution = a})

-- | Required.
rsGoogleCloudStorage :: Lens' ResultStorage (Maybe GoogleCloudStorage)
rsGoogleCloudStorage
  = lens _rsGoogleCloudStorage
      (\ s a -> s{_rsGoogleCloudStorage = a})

instance FromJSON ResultStorage where
        parseJSON
          = withObject "ResultStorage"
              (\ o ->
                 ResultStorage' <$>
                   (o .:? "toolResultsHistory") <*>
                     (o .:? "toolResultsExecution")
                     <*> (o .:? "googleCloudStorage"))

instance ToJSON ResultStorage where
        toJSON ResultStorage'{..}
          = object
              (catMaybes
                 [("toolResultsHistory" .=) <$> _rsToolResultsHistory,
                  ("toolResultsExecution" .=) <$>
                    _rsToolResultsExecution,
                  ("googleCloudStorage" .=) <$> _rsGoogleCloudStorage])

-- | A set of Android device configuration permutations is defined by the the
-- cross-product of the given axes. Internally, the given AndroidMatrix
-- will be expanded into a set of AndroidDevices. Only supported
-- permutations will be instantiated. Invalid permutations (e.g.,
-- incompatible models\/versions) are ignored.
--
-- /See:/ 'androidMatrix' smart constructor.
data AndroidMatrix =
  AndroidMatrix'
    { _amAndroidModelIds   :: !(Maybe [Text])
    , _amAndroidVersionIds :: !(Maybe [Text])
    , _amOrientations      :: !(Maybe [Text])
    , _amLocales           :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidMatrix' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amAndroidModelIds'
--
-- * 'amAndroidVersionIds'
--
-- * 'amOrientations'
--
-- * 'amLocales'
androidMatrix
    :: AndroidMatrix
androidMatrix =
  AndroidMatrix'
    { _amAndroidModelIds = Nothing
    , _amAndroidVersionIds = Nothing
    , _amOrientations = Nothing
    , _amLocales = Nothing
    }


-- | Required. The ids of the set of Android device to be used. Use the
-- TestEnvironmentDiscoveryService to get supported options.
amAndroidModelIds :: Lens' AndroidMatrix [Text]
amAndroidModelIds
  = lens _amAndroidModelIds
      (\ s a -> s{_amAndroidModelIds = a})
      . _Default
      . _Coerce

-- | Required. The ids of the set of Android OS version to be used. Use the
-- TestEnvironmentDiscoveryService to get supported options.
amAndroidVersionIds :: Lens' AndroidMatrix [Text]
amAndroidVersionIds
  = lens _amAndroidVersionIds
      (\ s a -> s{_amAndroidVersionIds = a})
      . _Default
      . _Coerce

-- | Required. The set of orientations to test with. Use the
-- TestEnvironmentDiscoveryService to get supported options.
amOrientations :: Lens' AndroidMatrix [Text]
amOrientations
  = lens _amOrientations
      (\ s a -> s{_amOrientations = a})
      . _Default
      . _Coerce

-- | Required. The set of locales the test device will enable for testing.
-- Use the TestEnvironmentDiscoveryService to get supported options.
amLocales :: Lens' AndroidMatrix [Text]
amLocales
  = lens _amLocales (\ s a -> s{_amLocales = a}) .
      _Default
      . _Coerce

instance FromJSON AndroidMatrix where
        parseJSON
          = withObject "AndroidMatrix"
              (\ o ->
                 AndroidMatrix' <$>
                   (o .:? "androidModelIds" .!= mempty) <*>
                     (o .:? "androidVersionIds" .!= mempty)
                     <*> (o .:? "orientations" .!= mempty)
                     <*> (o .:? "locales" .!= mempty))

instance ToJSON AndroidMatrix where
        toJSON AndroidMatrix'{..}
          = object
              (catMaybes
                 [("androidModelIds" .=) <$> _amAndroidModelIds,
                  ("androidVersionIds" .=) <$> _amAndroidVersionIds,
                  ("orientations" .=) <$> _amOrientations,
                  ("locales" .=) <$> _amLocales])

-- | Represents a tool results step resource. This has the results of a
-- TestExecution.
--
-- /See:/ 'toolResultsStep' smart constructor.
data ToolResultsStep =
  ToolResultsStep'
    { _trsExecutionId :: !(Maybe Text)
    , _trsStepId      :: !(Maybe Text)
    , _trsHistoryId   :: !(Maybe Text)
    , _trsProjectId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ToolResultsStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trsExecutionId'
--
-- * 'trsStepId'
--
-- * 'trsHistoryId'
--
-- * 'trsProjectId'
toolResultsStep
    :: ToolResultsStep
toolResultsStep =
  ToolResultsStep'
    { _trsExecutionId = Nothing
    , _trsStepId = Nothing
    , _trsHistoryId = Nothing
    , _trsProjectId = Nothing
    }


-- | Output only. A tool results execution ID.
trsExecutionId :: Lens' ToolResultsStep (Maybe Text)
trsExecutionId
  = lens _trsExecutionId
      (\ s a -> s{_trsExecutionId = a})

-- | Output only. A tool results step ID.
trsStepId :: Lens' ToolResultsStep (Maybe Text)
trsStepId
  = lens _trsStepId (\ s a -> s{_trsStepId = a})

-- | Output only. A tool results history ID.
trsHistoryId :: Lens' ToolResultsStep (Maybe Text)
trsHistoryId
  = lens _trsHistoryId (\ s a -> s{_trsHistoryId = a})

-- | Output only. The cloud project that owns the tool results step.
trsProjectId :: Lens' ToolResultsStep (Maybe Text)
trsProjectId
  = lens _trsProjectId (\ s a -> s{_trsProjectId = a})

instance FromJSON ToolResultsStep where
        parseJSON
          = withObject "ToolResultsStep"
              (\ o ->
                 ToolResultsStep' <$>
                   (o .:? "executionId") <*> (o .:? "stepId") <*>
                     (o .:? "historyId")
                     <*> (o .:? "projectId"))

instance ToJSON ToolResultsStep where
        toJSON ToolResultsStep'{..}
          = object
              (catMaybes
                 [("executionId" .=) <$> _trsExecutionId,
                  ("stepId" .=) <$> _trsStepId,
                  ("historyId" .=) <$> _trsHistoryId,
                  ("projectId" .=) <$> _trsProjectId])

-- | Specifies an intent that starts the main launcher activity.
--
-- /See:/ 'launcherActivityIntent' smart constructor.
data LauncherActivityIntent =
  LauncherActivityIntent'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LauncherActivityIntent' with the minimum fields required to make a request.
--
launcherActivityIntent
    :: LauncherActivityIntent
launcherActivityIntent = LauncherActivityIntent'


instance FromJSON LauncherActivityIntent where
        parseJSON
          = withObject "LauncherActivityIntent"
              (\ o -> pure LauncherActivityIntent')

instance ToJSON LauncherActivityIntent where
        toJSON = const emptyObject

-- | Android application details based on application manifest and apk
-- archive contents.
--
-- /See:/ 'aPKDetail' smart constructor.
newtype APKDetail =
  APKDetail'
    { _apkdAPKManifest :: Maybe APKManifest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APKDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkdAPKManifest'
aPKDetail
    :: APKDetail
aPKDetail = APKDetail' {_apkdAPKManifest = Nothing}


apkdAPKManifest :: Lens' APKDetail (Maybe APKManifest)
apkdAPKManifest
  = lens _apkdAPKManifest
      (\ s a -> s{_apkdAPKManifest = a})

instance FromJSON APKDetail where
        parseJSON
          = withObject "APKDetail"
              (\ o -> APKDetail' <$> (o .:? "apkManifest"))

instance ToJSON APKDetail where
        toJSON APKDetail'{..}
          = object
              (catMaybes [("apkManifest" .=) <$> _apkdAPKManifest])

-- | A single Android device.
--
-- /See:/ 'androidDevice' smart constructor.
data AndroidDevice =
  AndroidDevice'
    { _adAndroidVersionId :: !(Maybe Text)
    , _adLocale           :: !(Maybe Text)
    , _adAndroidModelId   :: !(Maybe Text)
    , _adOrientation      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adAndroidVersionId'
--
-- * 'adLocale'
--
-- * 'adAndroidModelId'
--
-- * 'adOrientation'
androidDevice
    :: AndroidDevice
androidDevice =
  AndroidDevice'
    { _adAndroidVersionId = Nothing
    , _adLocale = Nothing
    , _adAndroidModelId = Nothing
    , _adOrientation = Nothing
    }


-- | Required. The id of the Android OS version to be used. Use the
-- TestEnvironmentDiscoveryService to get supported options.
adAndroidVersionId :: Lens' AndroidDevice (Maybe Text)
adAndroidVersionId
  = lens _adAndroidVersionId
      (\ s a -> s{_adAndroidVersionId = a})

-- | Required. The locale the test device used for testing. Use the
-- TestEnvironmentDiscoveryService to get supported options.
adLocale :: Lens' AndroidDevice (Maybe Text)
adLocale = lens _adLocale (\ s a -> s{_adLocale = a})

-- | Required. The id of the Android device to be used. Use the
-- TestEnvironmentDiscoveryService to get supported options.
adAndroidModelId :: Lens' AndroidDevice (Maybe Text)
adAndroidModelId
  = lens _adAndroidModelId
      (\ s a -> s{_adAndroidModelId = a})

-- | Required. How the device is oriented during the test. Use the
-- TestEnvironmentDiscoveryService to get supported options.
adOrientation :: Lens' AndroidDevice (Maybe Text)
adOrientation
  = lens _adOrientation
      (\ s a -> s{_adOrientation = a})

instance FromJSON AndroidDevice where
        parseJSON
          = withObject "AndroidDevice"
              (\ o ->
                 AndroidDevice' <$>
                   (o .:? "androidVersionId") <*> (o .:? "locale") <*>
                     (o .:? "androidModelId")
                     <*> (o .:? "orientation"))

instance ToJSON AndroidDevice where
        toJSON AndroidDevice'{..}
          = object
              (catMaybes
                 [("androidVersionId" .=) <$> _adAndroidVersionId,
                  ("locale" .=) <$> _adLocale,
                  ("androidModelId" .=) <$> _adAndroidModelId,
                  ("orientation" .=) <$> _adOrientation])

-- | A key-value pair passed as an environment variable to the test.
--
-- /See:/ 'environmentVariable' smart constructor.
data EnvironmentVariable =
  EnvironmentVariable'
    { _evValue :: !(Maybe Text)
    , _evKey   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentVariable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evValue'
--
-- * 'evKey'
environmentVariable
    :: EnvironmentVariable
environmentVariable =
  EnvironmentVariable' {_evValue = Nothing, _evKey = Nothing}


-- | Value for the environment variable.
evValue :: Lens' EnvironmentVariable (Maybe Text)
evValue = lens _evValue (\ s a -> s{_evValue = a})

-- | Key for the environment variable.
evKey :: Lens' EnvironmentVariable (Maybe Text)
evKey = lens _evKey (\ s a -> s{_evKey = a})

instance FromJSON EnvironmentVariable where
        parseJSON
          = withObject "EnvironmentVariable"
              (\ o ->
                 EnvironmentVariable' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON EnvironmentVariable where
        toJSON EnvironmentVariable'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _evValue, ("key" .=) <$> _evKey])

-- | Screen orientation of the device.
--
-- /See:/ 'orientation' smart constructor.
data Orientation =
  Orientation'
    { _oName :: !(Maybe Text)
    , _oId   :: !(Maybe Text)
    , _oTags :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Orientation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oName'
--
-- * 'oId'
--
-- * 'oTags'
orientation
    :: Orientation
orientation = Orientation' {_oName = Nothing, _oId = Nothing, _oTags = Nothing}


-- | A human-friendly name for this orientation. Example: \"portrait\".
oName :: Lens' Orientation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | The id for this orientation. Example: \"portrait\".
oId :: Lens' Orientation (Maybe Text)
oId = lens _oId (\ s a -> s{_oId = a})

-- | Tags for this dimension. Example: \"default\".
oTags :: Lens' Orientation [Text]
oTags
  = lens _oTags (\ s a -> s{_oTags = a}) . _Default .
      _Coerce

instance FromJSON Orientation where
        parseJSON
          = withObject "Orientation"
              (\ o ->
                 Orientation' <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "tags" .!= mempty))

instance ToJSON Orientation where
        toJSON Orientation'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _oName, ("id" .=) <$> _oId,
                  ("tags" .=) <$> _oTags])

-- | The matrix of environments in which the test is to be executed.
--
-- /See:/ 'environmentMatrix' smart constructor.
data EnvironmentMatrix =
  EnvironmentMatrix'
    { _emIosDeviceList     :: !(Maybe IosDeviceList)
    , _emAndroidMatrix     :: !(Maybe AndroidMatrix)
    , _emAndroidDeviceList :: !(Maybe AndroidDeviceList)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentMatrix' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emIosDeviceList'
--
-- * 'emAndroidMatrix'
--
-- * 'emAndroidDeviceList'
environmentMatrix
    :: EnvironmentMatrix
environmentMatrix =
  EnvironmentMatrix'
    { _emIosDeviceList = Nothing
    , _emAndroidMatrix = Nothing
    , _emAndroidDeviceList = Nothing
    }


-- | A list of iOS devices.
emIosDeviceList :: Lens' EnvironmentMatrix (Maybe IosDeviceList)
emIosDeviceList
  = lens _emIosDeviceList
      (\ s a -> s{_emIosDeviceList = a})

-- | A matrix of Android devices.
emAndroidMatrix :: Lens' EnvironmentMatrix (Maybe AndroidMatrix)
emAndroidMatrix
  = lens _emAndroidMatrix
      (\ s a -> s{_emAndroidMatrix = a})

-- | A list of Android devices; the test will be run only on the specified
-- devices.
emAndroidDeviceList :: Lens' EnvironmentMatrix (Maybe AndroidDeviceList)
emAndroidDeviceList
  = lens _emAndroidDeviceList
      (\ s a -> s{_emAndroidDeviceList = a})

instance FromJSON EnvironmentMatrix where
        parseJSON
          = withObject "EnvironmentMatrix"
              (\ o ->
                 EnvironmentMatrix' <$>
                   (o .:? "iosDeviceList") <*> (o .:? "androidMatrix")
                     <*> (o .:? "androidDeviceList"))

instance ToJSON EnvironmentMatrix where
        toJSON EnvironmentMatrix'{..}
          = object
              (catMaybes
                 [("iosDeviceList" .=) <$> _emIosDeviceList,
                  ("androidMatrix" .=) <$> _emAndroidMatrix,
                  ("androidDeviceList" .=) <$> _emAndroidDeviceList])

-- | A single device file description.
--
-- /See:/ 'deviceFile' smart constructor.
data DeviceFile =
  DeviceFile'
    { _dfRegularFile :: !(Maybe RegularFile)
    , _dfObbFile     :: !(Maybe ObbFile)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfRegularFile'
--
-- * 'dfObbFile'
deviceFile
    :: DeviceFile
deviceFile = DeviceFile' {_dfRegularFile = Nothing, _dfObbFile = Nothing}


-- | A reference to a regular file
dfRegularFile :: Lens' DeviceFile (Maybe RegularFile)
dfRegularFile
  = lens _dfRegularFile
      (\ s a -> s{_dfRegularFile = a})

-- | A reference to an opaque binary blob file
dfObbFile :: Lens' DeviceFile (Maybe ObbFile)
dfObbFile
  = lens _dfObbFile (\ s a -> s{_dfObbFile = a})

instance FromJSON DeviceFile where
        parseJSON
          = withObject "DeviceFile"
              (\ o ->
                 DeviceFile' <$>
                   (o .:? "regularFile") <*> (o .:? "obbFile"))

instance ToJSON DeviceFile where
        toJSON DeviceFile'{..}
          = object
              (catMaybes
                 [("regularFile" .=) <$> _dfRegularFile,
                  ("obbFile" .=) <$> _dfObbFile])

-- | Key-value pair of detailed information about the client which invoked
-- the test. Examples: {\'Version\', \'1.0\'}, {\'Release Track\',
-- \'BETA\'}.
--
-- /See:/ 'clientInfoDetail' smart constructor.
data ClientInfoDetail =
  ClientInfoDetail'
    { _cidValue :: !(Maybe Text)
    , _cidKey   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClientInfoDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cidValue'
--
-- * 'cidKey'
clientInfoDetail
    :: ClientInfoDetail
clientInfoDetail = ClientInfoDetail' {_cidValue = Nothing, _cidKey = Nothing}


-- | Required. The value of detailed client information.
cidValue :: Lens' ClientInfoDetail (Maybe Text)
cidValue = lens _cidValue (\ s a -> s{_cidValue = a})

-- | Required. The key of detailed client information.
cidKey :: Lens' ClientInfoDetail (Maybe Text)
cidKey = lens _cidKey (\ s a -> s{_cidKey = a})

instance FromJSON ClientInfoDetail where
        parseJSON
          = withObject "ClientInfoDetail"
              (\ o ->
                 ClientInfoDetail' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON ClientInfoDetail where
        toJSON ClientInfoDetail'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _cidValue, ("key" .=) <$> _cidKey])

--
-- /See:/ 'networkConfiguration' smart constructor.
data NetworkConfiguration =
  NetworkConfiguration'
    { _ncDownRule :: !(Maybe TrafficRule)
    , _ncId       :: !(Maybe Text)
    , _ncUpRule   :: !(Maybe TrafficRule)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncDownRule'
--
-- * 'ncId'
--
-- * 'ncUpRule'
networkConfiguration
    :: NetworkConfiguration
networkConfiguration =
  NetworkConfiguration'
    {_ncDownRule = Nothing, _ncId = Nothing, _ncUpRule = Nothing}


-- | The emulation rule applying to the download traffic.
ncDownRule :: Lens' NetworkConfiguration (Maybe TrafficRule)
ncDownRule
  = lens _ncDownRule (\ s a -> s{_ncDownRule = a})

-- | The unique opaque id for this network traffic configuration.
ncId :: Lens' NetworkConfiguration (Maybe Text)
ncId = lens _ncId (\ s a -> s{_ncId = a})

-- | The emulation rule applying to the upload traffic.
ncUpRule :: Lens' NetworkConfiguration (Maybe TrafficRule)
ncUpRule = lens _ncUpRule (\ s a -> s{_ncUpRule = a})

instance FromJSON NetworkConfiguration where
        parseJSON
          = withObject "NetworkConfiguration"
              (\ o ->
                 NetworkConfiguration' <$>
                   (o .:? "downRule") <*> (o .:? "id") <*>
                     (o .:? "upRule"))

instance ToJSON NetworkConfiguration where
        toJSON NetworkConfiguration'{..}
          = object
              (catMaybes
                 [("downRule" .=) <$> _ncDownRule,
                  ("id" .=) <$> _ncId, ("upRule" .=) <$> _ncUpRule])

-- | iOS configuration that can be selected at the time a test is run.
--
-- /See:/ 'iosRuntimeConfiguration' smart constructor.
data IosRuntimeConfiguration =
  IosRuntimeConfiguration'
    { _ircOrientations :: !(Maybe [Orientation])
    , _ircLocales      :: !(Maybe [Locale])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IosRuntimeConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ircOrientations'
--
-- * 'ircLocales'
iosRuntimeConfiguration
    :: IosRuntimeConfiguration
iosRuntimeConfiguration =
  IosRuntimeConfiguration' {_ircOrientations = Nothing, _ircLocales = Nothing}


-- | The set of available orientations.
ircOrientations :: Lens' IosRuntimeConfiguration [Orientation]
ircOrientations
  = lens _ircOrientations
      (\ s a -> s{_ircOrientations = a})
      . _Default
      . _Coerce

-- | The set of available locales.
ircLocales :: Lens' IosRuntimeConfiguration [Locale]
ircLocales
  = lens _ircLocales (\ s a -> s{_ircLocales = a}) .
      _Default
      . _Coerce

instance FromJSON IosRuntimeConfiguration where
        parseJSON
          = withObject "IosRuntimeConfiguration"
              (\ o ->
                 IosRuntimeConfiguration' <$>
                   (o .:? "orientations" .!= mempty) <*>
                     (o .:? "locales" .!= mempty))

instance ToJSON IosRuntimeConfiguration where
        toJSON IosRuntimeConfiguration'{..}
          = object
              (catMaybes
                 [("orientations" .=) <$> _ircOrientations,
                  ("locales" .=) <$> _ircLocales])

-- | A storage location within Google cloud storage (GCS).
--
-- /See:/ 'googleCloudStorage' smart constructor.
newtype GoogleCloudStorage =
  GoogleCloudStorage'
    { _gcsGcsPath :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudStorage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsGcsPath'
googleCloudStorage
    :: GoogleCloudStorage
googleCloudStorage = GoogleCloudStorage' {_gcsGcsPath = Nothing}


-- | Required. The path to a directory in GCS that will eventually contain
-- the results for this test. The requesting user must have write access on
-- the bucket in the supplied path.
gcsGcsPath :: Lens' GoogleCloudStorage (Maybe Text)
gcsGcsPath
  = lens _gcsGcsPath (\ s a -> s{_gcsGcsPath = a})

instance FromJSON GoogleCloudStorage where
        parseJSON
          = withObject "GoogleCloudStorage"
              (\ o -> GoogleCloudStorage' <$> (o .:? "gcsPath"))

instance ToJSON GoogleCloudStorage where
        toJSON GoogleCloudStorage'{..}
          = object (catMaybes [("gcsPath" .=) <$> _gcsGcsPath])

-- | A version of the Android OS.
--
-- /See:/ 'androidVersion' smart constructor.
data AndroidVersion =
  AndroidVersion'
    { _avCodeName      :: !(Maybe Text)
    , _avDistribution  :: !(Maybe Distribution)
    , _avAPILevel      :: !(Maybe (Textual Int32))
    , _avVersionString :: !(Maybe Text)
    , _avId            :: !(Maybe Text)
    , _avReleaseDate   :: !(Maybe Date)
    , _avTags          :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avCodeName'
--
-- * 'avDistribution'
--
-- * 'avAPILevel'
--
-- * 'avVersionString'
--
-- * 'avId'
--
-- * 'avReleaseDate'
--
-- * 'avTags'
androidVersion
    :: AndroidVersion
androidVersion =
  AndroidVersion'
    { _avCodeName = Nothing
    , _avDistribution = Nothing
    , _avAPILevel = Nothing
    , _avVersionString = Nothing
    , _avId = Nothing
    , _avReleaseDate = Nothing
    , _avTags = Nothing
    }


-- | The code name for this Android version. Examples: \"JellyBean\",
-- \"KitKat\".
avCodeName :: Lens' AndroidVersion (Maybe Text)
avCodeName
  = lens _avCodeName (\ s a -> s{_avCodeName = a})

-- | Market share for this version.
avDistribution :: Lens' AndroidVersion (Maybe Distribution)
avDistribution
  = lens _avDistribution
      (\ s a -> s{_avDistribution = a})

-- | The API level for this Android version. Examples: 18, 19.
avAPILevel :: Lens' AndroidVersion (Maybe Int32)
avAPILevel
  = lens _avAPILevel (\ s a -> s{_avAPILevel = a}) .
      mapping _Coerce

-- | A string representing this version of the Android OS. Examples: \"4.3\",
-- \"4.4\".
avVersionString :: Lens' AndroidVersion (Maybe Text)
avVersionString
  = lens _avVersionString
      (\ s a -> s{_avVersionString = a})

-- | An opaque id for this Android version. Use this id to invoke the
-- TestExecutionService.
avId :: Lens' AndroidVersion (Maybe Text)
avId = lens _avId (\ s a -> s{_avId = a})

-- | The date this Android version became available in the market.
avReleaseDate :: Lens' AndroidVersion (Maybe Date)
avReleaseDate
  = lens _avReleaseDate
      (\ s a -> s{_avReleaseDate = a})

-- | Tags for this dimension. Examples: \"default\", \"preview\",
-- \"deprecated\".
avTags :: Lens' AndroidVersion [Text]
avTags
  = lens _avTags (\ s a -> s{_avTags = a}) . _Default .
      _Coerce

instance FromJSON AndroidVersion where
        parseJSON
          = withObject "AndroidVersion"
              (\ o ->
                 AndroidVersion' <$>
                   (o .:? "codeName") <*> (o .:? "distribution") <*>
                     (o .:? "apiLevel")
                     <*> (o .:? "versionString")
                     <*> (o .:? "id")
                     <*> (o .:? "releaseDate")
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON AndroidVersion where
        toJSON AndroidVersion'{..}
          = object
              (catMaybes
                 [("codeName" .=) <$> _avCodeName,
                  ("distribution" .=) <$> _avDistribution,
                  ("apiLevel" .=) <$> _avAPILevel,
                  ("versionString" .=) <$> _avVersionString,
                  ("id" .=) <$> _avId,
                  ("releaseDate" .=) <$> _avReleaseDate,
                  ("tags" .=) <$> _avTags])

-- | An opaque binary blob file to install on the device before the test
-- starts.
--
-- /See:/ 'obbFile' smart constructor.
data ObbFile =
  ObbFile'
    { _ofObb         :: !(Maybe FileReference)
    , _ofObbFileName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObbFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ofObb'
--
-- * 'ofObbFileName'
obbFile
    :: ObbFile
obbFile = ObbFile' {_ofObb = Nothing, _ofObbFileName = Nothing}


-- | Required. Opaque Binary Blob (OBB) file(s) to install on the device.
ofObb :: Lens' ObbFile (Maybe FileReference)
ofObb = lens _ofObb (\ s a -> s{_ofObb = a})

-- | Required. OBB file name which must conform to the format as specified by
-- Android e.g. [main|patch].0300110.com.example.android.obb which will be
-- installed into \\\/Android\/obb\/\\\/ on the device.
ofObbFileName :: Lens' ObbFile (Maybe Text)
ofObbFileName
  = lens _ofObbFileName
      (\ s a -> s{_ofObbFileName = a})

instance FromJSON ObbFile where
        parseJSON
          = withObject "ObbFile"
              (\ o ->
                 ObbFile' <$> (o .:? "obb") <*> (o .:? "obbFileName"))

instance ToJSON ObbFile where
        toJSON ObbFile'{..}
          = object
              (catMaybes
                 [("obb" .=) <$> _ofObb,
                  ("obbFileName" .=) <$> _ofObbFileName])

-- | A test of an Android Application with a Test Loop. The intent \\ will be
-- implicitly added, since Games is the only user of this api, for the time
-- being.
--
-- /See:/ 'androidTestLoop' smart constructor.
data AndroidTestLoop =
  AndroidTestLoop'
    { _atlScenarios      :: !(Maybe [Textual Int32])
    , _atlScenarioLabels :: !(Maybe [Text])
    , _atlAppPackageId   :: !(Maybe Text)
    , _atlAppBundle      :: !(Maybe AppBundle)
    , _atlAppAPK         :: !(Maybe FileReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidTestLoop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atlScenarios'
--
-- * 'atlScenarioLabels'
--
-- * 'atlAppPackageId'
--
-- * 'atlAppBundle'
--
-- * 'atlAppAPK'
androidTestLoop
    :: AndroidTestLoop
androidTestLoop =
  AndroidTestLoop'
    { _atlScenarios = Nothing
    , _atlScenarioLabels = Nothing
    , _atlAppPackageId = Nothing
    , _atlAppBundle = Nothing
    , _atlAppAPK = Nothing
    }


-- | The list of scenarios that should be run during the test. The default is
-- all test loops, derived from the application\'s manifest.
atlScenarios :: Lens' AndroidTestLoop [Int32]
atlScenarios
  = lens _atlScenarios (\ s a -> s{_atlScenarios = a})
      . _Default
      . _Coerce

-- | The list of scenario labels that should be run during the test. The
-- scenario labels should map to labels defined in the application\'s
-- manifest. For example, player_experience and
-- com.google.test.loops.player_experience add all of the loops labeled in
-- the manifest with the com.google.test.loops.player_experience name to
-- the execution. Scenarios can also be specified in the scenarios field.
atlScenarioLabels :: Lens' AndroidTestLoop [Text]
atlScenarioLabels
  = lens _atlScenarioLabels
      (\ s a -> s{_atlScenarioLabels = a})
      . _Default
      . _Coerce

-- | The java package for the application under test. The default is
-- determined by examining the application\'s manifest.
atlAppPackageId :: Lens' AndroidTestLoop (Maybe Text)
atlAppPackageId
  = lens _atlAppPackageId
      (\ s a -> s{_atlAppPackageId = a})

-- | A multi-apk app bundle for the application under test.
atlAppBundle :: Lens' AndroidTestLoop (Maybe AppBundle)
atlAppBundle
  = lens _atlAppBundle (\ s a -> s{_atlAppBundle = a})

-- | The APK for the application under test.
atlAppAPK :: Lens' AndroidTestLoop (Maybe FileReference)
atlAppAPK
  = lens _atlAppAPK (\ s a -> s{_atlAppAPK = a})

instance FromJSON AndroidTestLoop where
        parseJSON
          = withObject "AndroidTestLoop"
              (\ o ->
                 AndroidTestLoop' <$>
                   (o .:? "scenarios" .!= mempty) <*>
                     (o .:? "scenarioLabels" .!= mempty)
                     <*> (o .:? "appPackageId")
                     <*> (o .:? "appBundle")
                     <*> (o .:? "appApk"))

instance ToJSON AndroidTestLoop where
        toJSON AndroidTestLoop'{..}
          = object
              (catMaybes
                 [("scenarios" .=) <$> _atlScenarios,
                  ("scenarioLabels" .=) <$> _atlScenarioLabels,
                  ("appPackageId" .=) <$> _atlAppPackageId,
                  ("appBundle" .=) <$> _atlAppBundle,
                  ("appApk" .=) <$> _atlAppAPK])

-- | A list of Android device configurations in which the test is to be
-- executed.
--
-- /See:/ 'androidDeviceList' smart constructor.
newtype AndroidDeviceList =
  AndroidDeviceList'
    { _adlAndroidDevices :: Maybe [AndroidDevice]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidDeviceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adlAndroidDevices'
androidDeviceList
    :: AndroidDeviceList
androidDeviceList = AndroidDeviceList' {_adlAndroidDevices = Nothing}


-- | Required. A list of Android devices.
adlAndroidDevices :: Lens' AndroidDeviceList [AndroidDevice]
adlAndroidDevices
  = lens _adlAndroidDevices
      (\ s a -> s{_adlAndroidDevices = a})
      . _Default
      . _Coerce

instance FromJSON AndroidDeviceList where
        parseJSON
          = withObject "AndroidDeviceList"
              (\ o ->
                 AndroidDeviceList' <$>
                   (o .:? "androidDevices" .!= mempty))

instance ToJSON AndroidDeviceList where
        toJSON AndroidDeviceList'{..}
          = object
              (catMaybes
                 [("androidDevices" .=) <$> _adlAndroidDevices])

-- | A description of how to set up the Android device prior to running the
-- test.
--
-- /See:/ 'testSetup' smart constructor.
data TestSetup =
  TestSetup'
    { _tsAccount              :: !(Maybe Account)
    , _tsNetworkProFile       :: !(Maybe Text)
    , _tsEnvironmentVariables :: !(Maybe [EnvironmentVariable])
    , _tsAdditionalAPKs       :: !(Maybe [APK])
    , _tsFilesToPush          :: !(Maybe [DeviceFile])
    , _tsDirectoriesToPull    :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestSetup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsAccount'
--
-- * 'tsNetworkProFile'
--
-- * 'tsEnvironmentVariables'
--
-- * 'tsAdditionalAPKs'
--
-- * 'tsFilesToPush'
--
-- * 'tsDirectoriesToPull'
testSetup
    :: TestSetup
testSetup =
  TestSetup'
    { _tsAccount = Nothing
    , _tsNetworkProFile = Nothing
    , _tsEnvironmentVariables = Nothing
    , _tsAdditionalAPKs = Nothing
    , _tsFilesToPush = Nothing
    , _tsDirectoriesToPull = Nothing
    }


-- | The device will be logged in on this account for the duration of the
-- test.
tsAccount :: Lens' TestSetup (Maybe Account)
tsAccount
  = lens _tsAccount (\ s a -> s{_tsAccount = a})

-- | The network traffic profile used for running the test. Available network
-- profiles can be queried by using the NETWORK_CONFIGURATION environment
-- type when calling
-- TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
tsNetworkProFile :: Lens' TestSetup (Maybe Text)
tsNetworkProFile
  = lens _tsNetworkProFile
      (\ s a -> s{_tsNetworkProFile = a})

-- | Environment variables to set for the test (only applicable for
-- instrumentation tests).
tsEnvironmentVariables :: Lens' TestSetup [EnvironmentVariable]
tsEnvironmentVariables
  = lens _tsEnvironmentVariables
      (\ s a -> s{_tsEnvironmentVariables = a})
      . _Default
      . _Coerce

-- | APKs to install in addition to those being directly tested. Currently
-- capped at 100.
tsAdditionalAPKs :: Lens' TestSetup [APK]
tsAdditionalAPKs
  = lens _tsAdditionalAPKs
      (\ s a -> s{_tsAdditionalAPKs = a})
      . _Default
      . _Coerce

-- | List of files to push to the device before starting the test.
tsFilesToPush :: Lens' TestSetup [DeviceFile]
tsFilesToPush
  = lens _tsFilesToPush
      (\ s a -> s{_tsFilesToPush = a})
      . _Default
      . _Coerce

-- | List of directories on the device to upload to GCS at the end of the
-- test; they must be absolute paths under \/sdcard or \/data\/local\/tmp.
-- Path names are restricted to characters a-z A-Z 0-9 _ - . + and \/ Note:
-- The paths \/sdcard and \/data will be made available and treated as
-- implicit path substitutions. E.g. if \/sdcard on a particular device
-- does not map to external storage, the system will replace it with the
-- external storage path prefix for that device.
tsDirectoriesToPull :: Lens' TestSetup [Text]
tsDirectoriesToPull
  = lens _tsDirectoriesToPull
      (\ s a -> s{_tsDirectoriesToPull = a})
      . _Default
      . _Coerce

instance FromJSON TestSetup where
        parseJSON
          = withObject "TestSetup"
              (\ o ->
                 TestSetup' <$>
                   (o .:? "account") <*> (o .:? "networkProfile") <*>
                     (o .:? "environmentVariables" .!= mempty)
                     <*> (o .:? "additionalApks" .!= mempty)
                     <*> (o .:? "filesToPush" .!= mempty)
                     <*> (o .:? "directoriesToPull" .!= mempty))

instance ToJSON TestSetup where
        toJSON TestSetup'{..}
          = object
              (catMaybes
                 [("account" .=) <$> _tsAccount,
                  ("networkProfile" .=) <$> _tsNetworkProFile,
                  ("environmentVariables" .=) <$>
                    _tsEnvironmentVariables,
                  ("additionalApks" .=) <$> _tsAdditionalAPKs,
                  ("filesToPush" .=) <$> _tsFilesToPush,
                  ("directoriesToPull" .=) <$> _tsDirectoriesToPull])
