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
-- Module      : Network.Google.Resource.DriveActivity.Activity.Query
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query past activity in Google Drive.
--
-- /See:/ <https://developers.google.com/drive/activity/ Drive Activity API Reference> for @driveactivity.activity.query@.
module Network.Google.Resource.DriveActivity.Activity.Query
    (
    -- * REST Resource
      ActivityQueryResource

    -- * Creating a Request
    , activityQuery
    , ActivityQuery

    -- * Request Lenses
    , aqXgafv
    , aqUploadProtocol
    , aqAccessToken
    , aqUploadType
    , aqPayload
    , aqCallback
    ) where

import           Network.Google.DriveActivity.Types
import           Network.Google.Prelude

-- | A resource alias for @driveactivity.activity.query@ method which the
-- 'ActivityQuery' request conforms to.
type ActivityQueryResource =
     "v2" :>
       "activity:query" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] QueryDriveActivityRequest :>
                       Post '[JSON] QueryDriveActivityResponse

-- | Query past activity in Google Drive.
--
-- /See:/ 'activityQuery' smart constructor.
data ActivityQuery =
  ActivityQuery'
    { _aqXgafv          :: !(Maybe Xgafv)
    , _aqUploadProtocol :: !(Maybe Text)
    , _aqAccessToken    :: !(Maybe Text)
    , _aqUploadType     :: !(Maybe Text)
    , _aqPayload        :: !QueryDriveActivityRequest
    , _aqCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActivityQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aqXgafv'
--
-- * 'aqUploadProtocol'
--
-- * 'aqAccessToken'
--
-- * 'aqUploadType'
--
-- * 'aqPayload'
--
-- * 'aqCallback'
activityQuery
    :: QueryDriveActivityRequest -- ^ 'aqPayload'
    -> ActivityQuery
activityQuery pAqPayload_ =
  ActivityQuery'
    { _aqXgafv = Nothing
    , _aqUploadProtocol = Nothing
    , _aqAccessToken = Nothing
    , _aqUploadType = Nothing
    , _aqPayload = pAqPayload_
    , _aqCallback = Nothing
    }

-- | V1 error format.
aqXgafv :: Lens' ActivityQuery (Maybe Xgafv)
aqXgafv = lens _aqXgafv (\ s a -> s{_aqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aqUploadProtocol :: Lens' ActivityQuery (Maybe Text)
aqUploadProtocol
  = lens _aqUploadProtocol
      (\ s a -> s{_aqUploadProtocol = a})

-- | OAuth access token.
aqAccessToken :: Lens' ActivityQuery (Maybe Text)
aqAccessToken
  = lens _aqAccessToken
      (\ s a -> s{_aqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aqUploadType :: Lens' ActivityQuery (Maybe Text)
aqUploadType
  = lens _aqUploadType (\ s a -> s{_aqUploadType = a})

-- | Multipart request metadata.
aqPayload :: Lens' ActivityQuery QueryDriveActivityRequest
aqPayload
  = lens _aqPayload (\ s a -> s{_aqPayload = a})

-- | JSONP
aqCallback :: Lens' ActivityQuery (Maybe Text)
aqCallback
  = lens _aqCallback (\ s a -> s{_aqCallback = a})

instance GoogleRequest ActivityQuery where
        type Rs ActivityQuery = QueryDriveActivityResponse
        type Scopes ActivityQuery =
             '["https://www.googleapis.com/auth/drive.activity",
               "https://www.googleapis.com/auth/drive.activity.readonly"]
        requestClient ActivityQuery'{..}
          = go _aqXgafv _aqUploadProtocol _aqAccessToken
              _aqUploadType
              _aqCallback
              (Just AltJSON)
              _aqPayload
              driveActivityService
          where go
                  = buildClient (Proxy :: Proxy ActivityQueryResource)
                      mempty
