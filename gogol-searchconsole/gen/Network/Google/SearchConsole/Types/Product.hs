{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SearchConsole.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SearchConsole.Types.Product where

import           Network.Google.Prelude
import           Network.Google.SearchConsole.Types.Sum

-- | Describe image data.
--
-- /See:/ 'image' smart constructor.
data Image = Image'
    { _iData     :: !(Maybe Bytes)
    , _iMimeType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iData'
--
-- * 'iMimeType'
image
    :: Image
image =
    Image'
    { _iData = Nothing
    , _iMimeType = Nothing
    }

-- | Image data in format determined by the mime type. Currently, the format
-- will always be \"image\/png\", but this might change in the future.
iData :: Lens' Image (Maybe ByteString)
iData
  = lens _iData (\ s a -> s{_iData = a}) .
      mapping _Bytes

-- | The mime-type of the image data.
iMimeType :: Lens' Image (Maybe Text)
iMimeType
  = lens _iMimeType (\ s a -> s{_iMimeType = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$> (o .:? "data") <*> (o .:? "mimeType"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _iData,
                  ("mimeType" .=) <$> _iMimeType])

-- | Blocked resource.
--
-- /See:/ 'blockedResource' smart constructor.
newtype BlockedResource = BlockedResource'
    { _brURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlockedResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brURL'
blockedResource
    :: BlockedResource
blockedResource =
    BlockedResource'
    { _brURL = Nothing
    }

-- | URL of the blocked resource.
brURL :: Lens' BlockedResource (Maybe Text)
brURL = lens _brURL (\ s a -> s{_brURL = a})

instance FromJSON BlockedResource where
        parseJSON
          = withObject "BlockedResource"
              (\ o -> BlockedResource' <$> (o .:? "url"))

instance ToJSON BlockedResource where
        toJSON BlockedResource'{..}
          = object (catMaybes [("url" .=) <$> _brURL])

-- | Information about a resource with issue.
--
-- /See:/ 'resourceIssue' smart constructor.
newtype ResourceIssue = ResourceIssue'
    { _riBlockedResource :: Maybe BlockedResource
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riBlockedResource'
resourceIssue
    :: ResourceIssue
resourceIssue =
    ResourceIssue'
    { _riBlockedResource = Nothing
    }

-- | Describes a blocked resource issue.
riBlockedResource :: Lens' ResourceIssue (Maybe BlockedResource)
riBlockedResource
  = lens _riBlockedResource
      (\ s a -> s{_riBlockedResource = a})

instance FromJSON ResourceIssue where
        parseJSON
          = withObject "ResourceIssue"
              (\ o -> ResourceIssue' <$> (o .:? "blockedResource"))

instance ToJSON ResourceIssue where
        toJSON ResourceIssue'{..}
          = object
              (catMaybes
                 [("blockedResource" .=) <$> _riBlockedResource])

-- | Mobile-friendly test request.
--
-- /See:/ 'runMobileFriendlyTestRequest' smart constructor.
data RunMobileFriendlyTestRequest = RunMobileFriendlyTestRequest'
    { _rmftrURL               :: !(Maybe Text)
    , _rmftrRequestScreenshot :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RunMobileFriendlyTestRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmftrURL'
--
-- * 'rmftrRequestScreenshot'
runMobileFriendlyTestRequest
    :: RunMobileFriendlyTestRequest
runMobileFriendlyTestRequest =
    RunMobileFriendlyTestRequest'
    { _rmftrURL = Nothing
    , _rmftrRequestScreenshot = Nothing
    }

-- | URL for inspection.
rmftrURL :: Lens' RunMobileFriendlyTestRequest (Maybe Text)
rmftrURL = lens _rmftrURL (\ s a -> s{_rmftrURL = a})

-- | Whether or not screenshot is requested. Default is false.
rmftrRequestScreenshot :: Lens' RunMobileFriendlyTestRequest (Maybe Bool)
rmftrRequestScreenshot
  = lens _rmftrRequestScreenshot
      (\ s a -> s{_rmftrRequestScreenshot = a})

instance FromJSON RunMobileFriendlyTestRequest where
        parseJSON
          = withObject "RunMobileFriendlyTestRequest"
              (\ o ->
                 RunMobileFriendlyTestRequest' <$>
                   (o .:? "url") <*> (o .:? "requestScreenshot"))

instance ToJSON RunMobileFriendlyTestRequest where
        toJSON RunMobileFriendlyTestRequest'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _rmftrURL,
                  ("requestScreenshot" .=) <$>
                    _rmftrRequestScreenshot])

-- | Final state of the test, including error details if necessary.
--
-- /See:/ 'testStatus' smart constructor.
data TestStatus = TestStatus'
    { _tsStatus  :: !(Maybe TestStatusStatus)
    , _tsDetails :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsStatus'
--
-- * 'tsDetails'
testStatus
    :: TestStatus
testStatus =
    TestStatus'
    { _tsStatus = Nothing
    , _tsDetails = Nothing
    }

-- | Status of the test.
tsStatus :: Lens' TestStatus (Maybe TestStatusStatus)
tsStatus = lens _tsStatus (\ s a -> s{_tsStatus = a})

-- | Error details if applicable.
tsDetails :: Lens' TestStatus (Maybe Text)
tsDetails
  = lens _tsDetails (\ s a -> s{_tsDetails = a})

instance FromJSON TestStatus where
        parseJSON
          = withObject "TestStatus"
              (\ o ->
                 TestStatus' <$>
                   (o .:? "status") <*> (o .:? "details"))

instance ToJSON TestStatus where
        toJSON TestStatus'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _tsStatus,
                  ("details" .=) <$> _tsDetails])

-- | Mobile-friendly test response, including mobile-friendly issues and
-- resource issues.
--
-- /See:/ 'runMobileFriendlyTestResponse' smart constructor.
data RunMobileFriendlyTestResponse = RunMobileFriendlyTestResponse'
    { _rmftrScreenshot           :: !(Maybe Image)
    , _rmftrResourceIssues       :: !(Maybe [ResourceIssue])
    , _rmftrMobileFriendliness   :: !(Maybe RunMobileFriendlyTestResponseMobileFriendliness)
    , _rmftrTestStatus           :: !(Maybe TestStatus)
    , _rmftrMobileFriendlyIssues :: !(Maybe [MobileFriendlyIssue])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RunMobileFriendlyTestResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmftrScreenshot'
--
-- * 'rmftrResourceIssues'
--
-- * 'rmftrMobileFriendliness'
--
-- * 'rmftrTestStatus'
--
-- * 'rmftrMobileFriendlyIssues'
runMobileFriendlyTestResponse
    :: RunMobileFriendlyTestResponse
runMobileFriendlyTestResponse =
    RunMobileFriendlyTestResponse'
    { _rmftrScreenshot = Nothing
    , _rmftrResourceIssues = Nothing
    , _rmftrMobileFriendliness = Nothing
    , _rmftrTestStatus = Nothing
    , _rmftrMobileFriendlyIssues = Nothing
    }

-- | Screenshot of the requested URL.
rmftrScreenshot :: Lens' RunMobileFriendlyTestResponse (Maybe Image)
rmftrScreenshot
  = lens _rmftrScreenshot
      (\ s a -> s{_rmftrScreenshot = a})

-- | Information about embedded resources issues.
rmftrResourceIssues :: Lens' RunMobileFriendlyTestResponse [ResourceIssue]
rmftrResourceIssues
  = lens _rmftrResourceIssues
      (\ s a -> s{_rmftrResourceIssues = a})
      . _Default
      . _Coerce

-- | Test verdict, whether the page is mobile friendly or not.
rmftrMobileFriendliness :: Lens' RunMobileFriendlyTestResponse (Maybe RunMobileFriendlyTestResponseMobileFriendliness)
rmftrMobileFriendliness
  = lens _rmftrMobileFriendliness
      (\ s a -> s{_rmftrMobileFriendliness = a})

-- | Final state of the test, can be either complete or an error.
rmftrTestStatus :: Lens' RunMobileFriendlyTestResponse (Maybe TestStatus)
rmftrTestStatus
  = lens _rmftrTestStatus
      (\ s a -> s{_rmftrTestStatus = a})

-- | List of mobile-usability issues.
rmftrMobileFriendlyIssues :: Lens' RunMobileFriendlyTestResponse [MobileFriendlyIssue]
rmftrMobileFriendlyIssues
  = lens _rmftrMobileFriendlyIssues
      (\ s a -> s{_rmftrMobileFriendlyIssues = a})
      . _Default
      . _Coerce

instance FromJSON RunMobileFriendlyTestResponse where
        parseJSON
          = withObject "RunMobileFriendlyTestResponse"
              (\ o ->
                 RunMobileFriendlyTestResponse' <$>
                   (o .:? "screenshot") <*>
                     (o .:? "resourceIssues" .!= mempty)
                     <*> (o .:? "mobileFriendliness")
                     <*> (o .:? "testStatus")
                     <*> (o .:? "mobileFriendlyIssues" .!= mempty))

instance ToJSON RunMobileFriendlyTestResponse where
        toJSON RunMobileFriendlyTestResponse'{..}
          = object
              (catMaybes
                 [("screenshot" .=) <$> _rmftrScreenshot,
                  ("resourceIssues" .=) <$> _rmftrResourceIssues,
                  ("mobileFriendliness" .=) <$>
                    _rmftrMobileFriendliness,
                  ("testStatus" .=) <$> _rmftrTestStatus,
                  ("mobileFriendlyIssues" .=) <$>
                    _rmftrMobileFriendlyIssues])

-- | Mobile-friendly issue.
--
-- /See:/ 'mobileFriendlyIssue' smart constructor.
newtype MobileFriendlyIssue = MobileFriendlyIssue'
    { _mfiRule :: Maybe MobileFriendlyIssueRule
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileFriendlyIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfiRule'
mobileFriendlyIssue
    :: MobileFriendlyIssue
mobileFriendlyIssue =
    MobileFriendlyIssue'
    { _mfiRule = Nothing
    }

-- | Rule violated.
mfiRule :: Lens' MobileFriendlyIssue (Maybe MobileFriendlyIssueRule)
mfiRule = lens _mfiRule (\ s a -> s{_mfiRule = a})

instance FromJSON MobileFriendlyIssue where
        parseJSON
          = withObject "MobileFriendlyIssue"
              (\ o -> MobileFriendlyIssue' <$> (o .:? "rule"))

instance ToJSON MobileFriendlyIssue where
        toJSON MobileFriendlyIssue'{..}
          = object (catMaybes [("rule" .=) <$> _mfiRule])
