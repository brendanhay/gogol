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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeGroups.update@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Update
    (
    -- * REST Resource
      CreativeGroupsUpdateResource

    -- * Creating a Request
    , creativeGroupsUpdate
    , CreativeGroupsUpdate

    -- * Request Lenses
    , cguXgafv
    , cguUploadProtocol
    , cguAccessToken
    , cguUploadType
    , cguProFileId
    , cguPayload
    , cguCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeGroups.update@ method which the
-- 'CreativeGroupsUpdate' request conforms to.
type CreativeGroupsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CreativeGroup :>
                             Put '[JSON] CreativeGroup

-- | Updates an existing creative group.
--
-- /See:/ 'creativeGroupsUpdate' smart constructor.
data CreativeGroupsUpdate =
  CreativeGroupsUpdate'
    { _cguXgafv :: !(Maybe Xgafv)
    , _cguUploadProtocol :: !(Maybe Text)
    , _cguAccessToken :: !(Maybe Text)
    , _cguUploadType :: !(Maybe Text)
    , _cguProFileId :: !(Textual Int64)
    , _cguPayload :: !CreativeGroup
    , _cguCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeGroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cguXgafv'
--
-- * 'cguUploadProtocol'
--
-- * 'cguAccessToken'
--
-- * 'cguUploadType'
--
-- * 'cguProFileId'
--
-- * 'cguPayload'
--
-- * 'cguCallback'
creativeGroupsUpdate
    :: Int64 -- ^ 'cguProFileId'
    -> CreativeGroup -- ^ 'cguPayload'
    -> CreativeGroupsUpdate
creativeGroupsUpdate pCguProFileId_ pCguPayload_ =
  CreativeGroupsUpdate'
    { _cguXgafv = Nothing
    , _cguUploadProtocol = Nothing
    , _cguAccessToken = Nothing
    , _cguUploadType = Nothing
    , _cguProFileId = _Coerce # pCguProFileId_
    , _cguPayload = pCguPayload_
    , _cguCallback = Nothing
    }


-- | V1 error format.
cguXgafv :: Lens' CreativeGroupsUpdate (Maybe Xgafv)
cguXgafv = lens _cguXgafv (\ s a -> s{_cguXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cguUploadProtocol :: Lens' CreativeGroupsUpdate (Maybe Text)
cguUploadProtocol
  = lens _cguUploadProtocol
      (\ s a -> s{_cguUploadProtocol = a})

-- | OAuth access token.
cguAccessToken :: Lens' CreativeGroupsUpdate (Maybe Text)
cguAccessToken
  = lens _cguAccessToken
      (\ s a -> s{_cguAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cguUploadType :: Lens' CreativeGroupsUpdate (Maybe Text)
cguUploadType
  = lens _cguUploadType
      (\ s a -> s{_cguUploadType = a})

-- | User profile ID associated with this request.
cguProFileId :: Lens' CreativeGroupsUpdate Int64
cguProFileId
  = lens _cguProFileId (\ s a -> s{_cguProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cguPayload :: Lens' CreativeGroupsUpdate CreativeGroup
cguPayload
  = lens _cguPayload (\ s a -> s{_cguPayload = a})

-- | JSONP
cguCallback :: Lens' CreativeGroupsUpdate (Maybe Text)
cguCallback
  = lens _cguCallback (\ s a -> s{_cguCallback = a})

instance GoogleRequest CreativeGroupsUpdate where
        type Rs CreativeGroupsUpdate = CreativeGroup
        type Scopes CreativeGroupsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeGroupsUpdate'{..}
          = go _cguProFileId _cguXgafv _cguUploadProtocol
              _cguAccessToken
              _cguUploadType
              _cguCallback
              (Just AltJSON)
              _cguPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsUpdateResource)
                      mempty
