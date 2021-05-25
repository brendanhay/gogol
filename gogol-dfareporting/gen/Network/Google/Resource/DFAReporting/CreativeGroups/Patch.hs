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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative group. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeGroups.patch@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Patch
    (
    -- * REST Resource
      CreativeGroupsPatchResource

    -- * Creating a Request
    , creativeGroupsPatch
    , CreativeGroupsPatch

    -- * Request Lenses
    , cgpXgafv
    , cgpUploadProtocol
    , cgpAccessToken
    , cgpUploadType
    , cgpProFileId
    , cgpPayload
    , cgpId
    , cgpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeGroups.patch@ method which the
-- 'CreativeGroupsPatch' request conforms to.
type CreativeGroupsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeGroups" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CreativeGroup :>
                               Patch '[JSON] CreativeGroup

-- | Updates an existing creative group. This method supports patch
-- semantics.
--
-- /See:/ 'creativeGroupsPatch' smart constructor.
data CreativeGroupsPatch =
  CreativeGroupsPatch'
    { _cgpXgafv :: !(Maybe Xgafv)
    , _cgpUploadProtocol :: !(Maybe Text)
    , _cgpAccessToken :: !(Maybe Text)
    , _cgpUploadType :: !(Maybe Text)
    , _cgpProFileId :: !(Textual Int64)
    , _cgpPayload :: !CreativeGroup
    , _cgpId :: !(Textual Int64)
    , _cgpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeGroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgpXgafv'
--
-- * 'cgpUploadProtocol'
--
-- * 'cgpAccessToken'
--
-- * 'cgpUploadType'
--
-- * 'cgpProFileId'
--
-- * 'cgpPayload'
--
-- * 'cgpId'
--
-- * 'cgpCallback'
creativeGroupsPatch
    :: Int64 -- ^ 'cgpProFileId'
    -> CreativeGroup -- ^ 'cgpPayload'
    -> Int64 -- ^ 'cgpId'
    -> CreativeGroupsPatch
creativeGroupsPatch pCgpProFileId_ pCgpPayload_ pCgpId_ =
  CreativeGroupsPatch'
    { _cgpXgafv = Nothing
    , _cgpUploadProtocol = Nothing
    , _cgpAccessToken = Nothing
    , _cgpUploadType = Nothing
    , _cgpProFileId = _Coerce # pCgpProFileId_
    , _cgpPayload = pCgpPayload_
    , _cgpId = _Coerce # pCgpId_
    , _cgpCallback = Nothing
    }


-- | V1 error format.
cgpXgafv :: Lens' CreativeGroupsPatch (Maybe Xgafv)
cgpXgafv = lens _cgpXgafv (\ s a -> s{_cgpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgpUploadProtocol :: Lens' CreativeGroupsPatch (Maybe Text)
cgpUploadProtocol
  = lens _cgpUploadProtocol
      (\ s a -> s{_cgpUploadProtocol = a})

-- | OAuth access token.
cgpAccessToken :: Lens' CreativeGroupsPatch (Maybe Text)
cgpAccessToken
  = lens _cgpAccessToken
      (\ s a -> s{_cgpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgpUploadType :: Lens' CreativeGroupsPatch (Maybe Text)
cgpUploadType
  = lens _cgpUploadType
      (\ s a -> s{_cgpUploadType = a})

-- | User profile ID associated with this request.
cgpProFileId :: Lens' CreativeGroupsPatch Int64
cgpProFileId
  = lens _cgpProFileId (\ s a -> s{_cgpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cgpPayload :: Lens' CreativeGroupsPatch CreativeGroup
cgpPayload
  = lens _cgpPayload (\ s a -> s{_cgpPayload = a})

-- | CreativeGroup ID.
cgpId :: Lens' CreativeGroupsPatch Int64
cgpId
  = lens _cgpId (\ s a -> s{_cgpId = a}) . _Coerce

-- | JSONP
cgpCallback :: Lens' CreativeGroupsPatch (Maybe Text)
cgpCallback
  = lens _cgpCallback (\ s a -> s{_cgpCallback = a})

instance GoogleRequest CreativeGroupsPatch where
        type Rs CreativeGroupsPatch = CreativeGroup
        type Scopes CreativeGroupsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeGroupsPatch'{..}
          = go _cgpProFileId (Just _cgpId) _cgpXgafv
              _cgpUploadProtocol
              _cgpAccessToken
              _cgpUploadType
              _cgpCallback
              (Just AltJSON)
              _cgpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsPatchResource)
                      mempty
