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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivities.delete@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Delete
    (
    -- * REST Resource
      FloodlightActivitiesDeleteResource

    -- * Creating a Request
    , floodlightActivitiesDelete
    , FloodlightActivitiesDelete

    -- * Request Lenses
    , fadXgafv
    , fadUploadProtocol
    , fadAccessToken
    , fadUploadType
    , fadProFileId
    , fadId
    , fadCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.delete@ method which the
-- 'FloodlightActivitiesDelete' request conforms to.
type FloodlightActivitiesDeleteResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivities" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing floodlight activity.
--
-- /See:/ 'floodlightActivitiesDelete' smart constructor.
data FloodlightActivitiesDelete =
  FloodlightActivitiesDelete'
    { _fadXgafv :: !(Maybe Xgafv)
    , _fadUploadProtocol :: !(Maybe Text)
    , _fadAccessToken :: !(Maybe Text)
    , _fadUploadType :: !(Maybe Text)
    , _fadProFileId :: !(Textual Int64)
    , _fadId :: !(Textual Int64)
    , _fadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivitiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fadXgafv'
--
-- * 'fadUploadProtocol'
--
-- * 'fadAccessToken'
--
-- * 'fadUploadType'
--
-- * 'fadProFileId'
--
-- * 'fadId'
--
-- * 'fadCallback'
floodlightActivitiesDelete
    :: Int64 -- ^ 'fadProFileId'
    -> Int64 -- ^ 'fadId'
    -> FloodlightActivitiesDelete
floodlightActivitiesDelete pFadProFileId_ pFadId_ =
  FloodlightActivitiesDelete'
    { _fadXgafv = Nothing
    , _fadUploadProtocol = Nothing
    , _fadAccessToken = Nothing
    , _fadUploadType = Nothing
    , _fadProFileId = _Coerce # pFadProFileId_
    , _fadId = _Coerce # pFadId_
    , _fadCallback = Nothing
    }


-- | V1 error format.
fadXgafv :: Lens' FloodlightActivitiesDelete (Maybe Xgafv)
fadXgafv = lens _fadXgafv (\ s a -> s{_fadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fadUploadProtocol :: Lens' FloodlightActivitiesDelete (Maybe Text)
fadUploadProtocol
  = lens _fadUploadProtocol
      (\ s a -> s{_fadUploadProtocol = a})

-- | OAuth access token.
fadAccessToken :: Lens' FloodlightActivitiesDelete (Maybe Text)
fadAccessToken
  = lens _fadAccessToken
      (\ s a -> s{_fadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fadUploadType :: Lens' FloodlightActivitiesDelete (Maybe Text)
fadUploadType
  = lens _fadUploadType
      (\ s a -> s{_fadUploadType = a})

-- | User profile ID associated with this request.
fadProFileId :: Lens' FloodlightActivitiesDelete Int64
fadProFileId
  = lens _fadProFileId (\ s a -> s{_fadProFileId = a})
      . _Coerce

-- | Floodlight activity ID.
fadId :: Lens' FloodlightActivitiesDelete Int64
fadId
  = lens _fadId (\ s a -> s{_fadId = a}) . _Coerce

-- | JSONP
fadCallback :: Lens' FloodlightActivitiesDelete (Maybe Text)
fadCallback
  = lens _fadCallback (\ s a -> s{_fadCallback = a})

instance GoogleRequest FloodlightActivitiesDelete
         where
        type Rs FloodlightActivitiesDelete = ()
        type Scopes FloodlightActivitiesDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivitiesDelete'{..}
          = go _fadProFileId _fadId _fadXgafv
              _fadUploadProtocol
              _fadAccessToken
              _fadUploadType
              _fadCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesDeleteResource)
                      mempty
