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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivityGroups.update@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Update
    (
    -- * REST Resource
      FloodlightActivityGroupsUpdateResource

    -- * Creating a Request
    , floodlightActivityGroupsUpdate
    , FloodlightActivityGroupsUpdate

    -- * Request Lenses
    , faguXgafv
    , faguUploadProtocol
    , faguAccessToken
    , faguUploadType
    , faguProFileId
    , faguPayload
    , faguCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.update@ method which the
-- 'FloodlightActivityGroupsUpdate' request conforms to.
type FloodlightActivityGroupsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivityGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FloodlightActivityGroup :>
                             Put '[JSON] FloodlightActivityGroup

-- | Updates an existing floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsUpdate' smart constructor.
data FloodlightActivityGroupsUpdate =
  FloodlightActivityGroupsUpdate'
    { _faguXgafv :: !(Maybe Xgafv)
    , _faguUploadProtocol :: !(Maybe Text)
    , _faguAccessToken :: !(Maybe Text)
    , _faguUploadType :: !(Maybe Text)
    , _faguProFileId :: !(Textual Int64)
    , _faguPayload :: !FloodlightActivityGroup
    , _faguCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivityGroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faguXgafv'
--
-- * 'faguUploadProtocol'
--
-- * 'faguAccessToken'
--
-- * 'faguUploadType'
--
-- * 'faguProFileId'
--
-- * 'faguPayload'
--
-- * 'faguCallback'
floodlightActivityGroupsUpdate
    :: Int64 -- ^ 'faguProFileId'
    -> FloodlightActivityGroup -- ^ 'faguPayload'
    -> FloodlightActivityGroupsUpdate
floodlightActivityGroupsUpdate pFaguProFileId_ pFaguPayload_ =
  FloodlightActivityGroupsUpdate'
    { _faguXgafv = Nothing
    , _faguUploadProtocol = Nothing
    , _faguAccessToken = Nothing
    , _faguUploadType = Nothing
    , _faguProFileId = _Coerce # pFaguProFileId_
    , _faguPayload = pFaguPayload_
    , _faguCallback = Nothing
    }


-- | V1 error format.
faguXgafv :: Lens' FloodlightActivityGroupsUpdate (Maybe Xgafv)
faguXgafv
  = lens _faguXgafv (\ s a -> s{_faguXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
faguUploadProtocol :: Lens' FloodlightActivityGroupsUpdate (Maybe Text)
faguUploadProtocol
  = lens _faguUploadProtocol
      (\ s a -> s{_faguUploadProtocol = a})

-- | OAuth access token.
faguAccessToken :: Lens' FloodlightActivityGroupsUpdate (Maybe Text)
faguAccessToken
  = lens _faguAccessToken
      (\ s a -> s{_faguAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
faguUploadType :: Lens' FloodlightActivityGroupsUpdate (Maybe Text)
faguUploadType
  = lens _faguUploadType
      (\ s a -> s{_faguUploadType = a})

-- | User profile ID associated with this request.
faguProFileId :: Lens' FloodlightActivityGroupsUpdate Int64
faguProFileId
  = lens _faguProFileId
      (\ s a -> s{_faguProFileId = a})
      . _Coerce

-- | Multipart request metadata.
faguPayload :: Lens' FloodlightActivityGroupsUpdate FloodlightActivityGroup
faguPayload
  = lens _faguPayload (\ s a -> s{_faguPayload = a})

-- | JSONP
faguCallback :: Lens' FloodlightActivityGroupsUpdate (Maybe Text)
faguCallback
  = lens _faguCallback (\ s a -> s{_faguCallback = a})

instance GoogleRequest FloodlightActivityGroupsUpdate
         where
        type Rs FloodlightActivityGroupsUpdate =
             FloodlightActivityGroup
        type Scopes FloodlightActivityGroupsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivityGroupsUpdate'{..}
          = go _faguProFileId _faguXgafv _faguUploadProtocol
              _faguAccessToken
              _faguUploadType
              _faguCallback
              (Just AltJSON)
              _faguPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightActivityGroupsUpdateResource)
                      mempty
