{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Generatetag
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a tag for a floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivities.generatetag@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Generatetag
    (
    -- * REST Resource
      FloodlightActivitiesGeneratetagResource

    -- * Creating a Request
    , floodlightActivitiesGeneratetag
    , FloodlightActivitiesGeneratetag

    -- * Request Lenses
    , fagXgafv
    , fagUploadProtocol
    , fagFloodlightActivityId
    , fagAccessToken
    , fagUploadType
    , fagProFileId
    , fagCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.generatetag@ method which the
-- 'FloodlightActivitiesGeneratetag' request conforms to.
type FloodlightActivitiesGeneratetagResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivities" :>
               "generatetag" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "floodlightActivityId" (Textual Int64) :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON]
                                 FloodlightActivitiesGenerateTagResponse

-- | Generates a tag for a floodlight activity.
--
-- /See:/ 'floodlightActivitiesGeneratetag' smart constructor.
data FloodlightActivitiesGeneratetag =
  FloodlightActivitiesGeneratetag'
    { _fagXgafv :: !(Maybe Xgafv)
    , _fagUploadProtocol :: !(Maybe Text)
    , _fagFloodlightActivityId :: !(Maybe (Textual Int64))
    , _fagAccessToken :: !(Maybe Text)
    , _fagUploadType :: !(Maybe Text)
    , _fagProFileId :: !(Textual Int64)
    , _fagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivitiesGeneratetag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagXgafv'
--
-- * 'fagUploadProtocol'
--
-- * 'fagFloodlightActivityId'
--
-- * 'fagAccessToken'
--
-- * 'fagUploadType'
--
-- * 'fagProFileId'
--
-- * 'fagCallback'
floodlightActivitiesGeneratetag
    :: Int64 -- ^ 'fagProFileId'
    -> FloodlightActivitiesGeneratetag
floodlightActivitiesGeneratetag pFagProFileId_ =
  FloodlightActivitiesGeneratetag'
    { _fagXgafv = Nothing
    , _fagUploadProtocol = Nothing
    , _fagFloodlightActivityId = Nothing
    , _fagAccessToken = Nothing
    , _fagUploadType = Nothing
    , _fagProFileId = _Coerce # pFagProFileId_
    , _fagCallback = Nothing
    }


-- | V1 error format.
fagXgafv :: Lens' FloodlightActivitiesGeneratetag (Maybe Xgafv)
fagXgafv = lens _fagXgafv (\ s a -> s{_fagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fagUploadProtocol :: Lens' FloodlightActivitiesGeneratetag (Maybe Text)
fagUploadProtocol
  = lens _fagUploadProtocol
      (\ s a -> s{_fagUploadProtocol = a})

-- | Floodlight activity ID for which we want to generate a tag.
fagFloodlightActivityId :: Lens' FloodlightActivitiesGeneratetag (Maybe Int64)
fagFloodlightActivityId
  = lens _fagFloodlightActivityId
      (\ s a -> s{_fagFloodlightActivityId = a})
      . mapping _Coerce

-- | OAuth access token.
fagAccessToken :: Lens' FloodlightActivitiesGeneratetag (Maybe Text)
fagAccessToken
  = lens _fagAccessToken
      (\ s a -> s{_fagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fagUploadType :: Lens' FloodlightActivitiesGeneratetag (Maybe Text)
fagUploadType
  = lens _fagUploadType
      (\ s a -> s{_fagUploadType = a})

-- | User profile ID associated with this request.
fagProFileId :: Lens' FloodlightActivitiesGeneratetag Int64
fagProFileId
  = lens _fagProFileId (\ s a -> s{_fagProFileId = a})
      . _Coerce

-- | JSONP
fagCallback :: Lens' FloodlightActivitiesGeneratetag (Maybe Text)
fagCallback
  = lens _fagCallback (\ s a -> s{_fagCallback = a})

instance GoogleRequest
           FloodlightActivitiesGeneratetag
         where
        type Rs FloodlightActivitiesGeneratetag =
             FloodlightActivitiesGenerateTagResponse
        type Scopes FloodlightActivitiesGeneratetag =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivitiesGeneratetag'{..}
          = go _fagProFileId _fagXgafv _fagUploadProtocol
              _fagFloodlightActivityId
              _fagAccessToken
              _fagUploadType
              _fagCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightActivitiesGeneratetagResource)
                      mempty
