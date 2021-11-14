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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight activity. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivities.patch@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Patch
    (
    -- * REST Resource
      FloodlightActivitiesPatchResource

    -- * Creating a Request
    , floodlightActivitiesPatch
    , FloodlightActivitiesPatch

    -- * Request Lenses
    , fapXgafv
    , fapUploadProtocol
    , fapAccessToken
    , fapUploadType
    , fapProFileId
    , fapPayload
    , fapId
    , fapCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.patch@ method which the
-- 'FloodlightActivitiesPatch' request conforms to.
type FloodlightActivitiesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivities" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] FloodlightActivity :>
                               Patch '[JSON] FloodlightActivity

-- | Updates an existing floodlight activity. This method supports patch
-- semantics.
--
-- /See:/ 'floodlightActivitiesPatch' smart constructor.
data FloodlightActivitiesPatch =
  FloodlightActivitiesPatch'
    { _fapXgafv :: !(Maybe Xgafv)
    , _fapUploadProtocol :: !(Maybe Text)
    , _fapAccessToken :: !(Maybe Text)
    , _fapUploadType :: !(Maybe Text)
    , _fapProFileId :: !(Textual Int64)
    , _fapPayload :: !FloodlightActivity
    , _fapId :: !(Textual Int64)
    , _fapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivitiesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fapXgafv'
--
-- * 'fapUploadProtocol'
--
-- * 'fapAccessToken'
--
-- * 'fapUploadType'
--
-- * 'fapProFileId'
--
-- * 'fapPayload'
--
-- * 'fapId'
--
-- * 'fapCallback'
floodlightActivitiesPatch
    :: Int64 -- ^ 'fapProFileId'
    -> FloodlightActivity -- ^ 'fapPayload'
    -> Int64 -- ^ 'fapId'
    -> FloodlightActivitiesPatch
floodlightActivitiesPatch pFapProFileId_ pFapPayload_ pFapId_ =
  FloodlightActivitiesPatch'
    { _fapXgafv = Nothing
    , _fapUploadProtocol = Nothing
    , _fapAccessToken = Nothing
    , _fapUploadType = Nothing
    , _fapProFileId = _Coerce # pFapProFileId_
    , _fapPayload = pFapPayload_
    , _fapId = _Coerce # pFapId_
    , _fapCallback = Nothing
    }


-- | V1 error format.
fapXgafv :: Lens' FloodlightActivitiesPatch (Maybe Xgafv)
fapXgafv = lens _fapXgafv (\ s a -> s{_fapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fapUploadProtocol :: Lens' FloodlightActivitiesPatch (Maybe Text)
fapUploadProtocol
  = lens _fapUploadProtocol
      (\ s a -> s{_fapUploadProtocol = a})

-- | OAuth access token.
fapAccessToken :: Lens' FloodlightActivitiesPatch (Maybe Text)
fapAccessToken
  = lens _fapAccessToken
      (\ s a -> s{_fapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fapUploadType :: Lens' FloodlightActivitiesPatch (Maybe Text)
fapUploadType
  = lens _fapUploadType
      (\ s a -> s{_fapUploadType = a})

-- | User profile ID associated with this request.
fapProFileId :: Lens' FloodlightActivitiesPatch Int64
fapProFileId
  = lens _fapProFileId (\ s a -> s{_fapProFileId = a})
      . _Coerce

-- | Multipart request metadata.
fapPayload :: Lens' FloodlightActivitiesPatch FloodlightActivity
fapPayload
  = lens _fapPayload (\ s a -> s{_fapPayload = a})

-- | FloodlightActivity ID.
fapId :: Lens' FloodlightActivitiesPatch Int64
fapId
  = lens _fapId (\ s a -> s{_fapId = a}) . _Coerce

-- | JSONP
fapCallback :: Lens' FloodlightActivitiesPatch (Maybe Text)
fapCallback
  = lens _fapCallback (\ s a -> s{_fapCallback = a})

instance GoogleRequest FloodlightActivitiesPatch
         where
        type Rs FloodlightActivitiesPatch =
             FloodlightActivity
        type Scopes FloodlightActivitiesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivitiesPatch'{..}
          = go _fapProFileId (Just _fapId) _fapXgafv
              _fapUploadProtocol
              _fapAccessToken
              _fapUploadType
              _fapCallback
              (Just AltJSON)
              _fapPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesPatchResource)
                      mempty
