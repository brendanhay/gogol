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
-- Module      : Network.Google.Resource.Genomics.CallSets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a call set. For the definitions of call sets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.callsets.patch@.
module Network.Google.Resource.Genomics.CallSets.Patch
    (
    -- * REST Resource
      CallSetsPatchResource

    -- * Creating a Request
    , callSetsPatch
    , CallSetsPatch

    -- * Request Lenses
    , cspXgafv
    , cspUploadProtocol
    , cspUpdateMask
    , cspPp
    , cspAccessToken
    , cspUploadType
    , cspPayload
    , cspBearerToken
    , cspCallSetId
    , cspCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.callsets.patch@ method which the
-- 'CallSetsPatch' request conforms to.
type CallSetsPatchResource =
     "v1" :>
       "callsets" :>
         Capture "callSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CallSet :> Patch '[JSON] CallSet

-- | Updates a call set. For the definitions of call sets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This method supports patch semantics.
--
-- /See:/ 'callSetsPatch' smart constructor.
data CallSetsPatch = CallSetsPatch'
    { _cspXgafv          :: !(Maybe Text)
    , _cspUploadProtocol :: !(Maybe Text)
    , _cspUpdateMask     :: !(Maybe Text)
    , _cspPp             :: !Bool
    , _cspAccessToken    :: !(Maybe Text)
    , _cspUploadType     :: !(Maybe Text)
    , _cspPayload        :: !CallSet
    , _cspBearerToken    :: !(Maybe Text)
    , _cspCallSetId      :: !Text
    , _cspCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallSetsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cspXgafv'
--
-- * 'cspUploadProtocol'
--
-- * 'cspUpdateMask'
--
-- * 'cspPp'
--
-- * 'cspAccessToken'
--
-- * 'cspUploadType'
--
-- * 'cspPayload'
--
-- * 'cspBearerToken'
--
-- * 'cspCallSetId'
--
-- * 'cspCallback'
callSetsPatch
    :: CallSet -- ^ 'cspPayload'
    -> Text -- ^ 'cspCallSetId'
    -> CallSetsPatch
callSetsPatch pCspPayload_ pCspCallSetId_ =
    CallSetsPatch'
    { _cspXgafv = Nothing
    , _cspUploadProtocol = Nothing
    , _cspUpdateMask = Nothing
    , _cspPp = True
    , _cspAccessToken = Nothing
    , _cspUploadType = Nothing
    , _cspPayload = pCspPayload_
    , _cspBearerToken = Nothing
    , _cspCallSetId = pCspCallSetId_
    , _cspCallback = Nothing
    }

-- | V1 error format.
cspXgafv :: Lens' CallSetsPatch (Maybe Text)
cspXgafv = lens _cspXgafv (\ s a -> s{_cspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cspUploadProtocol :: Lens' CallSetsPatch (Maybe Text)
cspUploadProtocol
  = lens _cspUploadProtocol
      (\ s a -> s{_cspUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time, the
-- only mutable field is name. The only acceptable value is \"name\". If
-- unspecified, all mutable fields will be updated.
cspUpdateMask :: Lens' CallSetsPatch (Maybe Text)
cspUpdateMask
  = lens _cspUpdateMask
      (\ s a -> s{_cspUpdateMask = a})

-- | Pretty-print response.
cspPp :: Lens' CallSetsPatch Bool
cspPp = lens _cspPp (\ s a -> s{_cspPp = a})

-- | OAuth access token.
cspAccessToken :: Lens' CallSetsPatch (Maybe Text)
cspAccessToken
  = lens _cspAccessToken
      (\ s a -> s{_cspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cspUploadType :: Lens' CallSetsPatch (Maybe Text)
cspUploadType
  = lens _cspUploadType
      (\ s a -> s{_cspUploadType = a})

-- | Multipart request metadata.
cspPayload :: Lens' CallSetsPatch CallSet
cspPayload
  = lens _cspPayload (\ s a -> s{_cspPayload = a})

-- | OAuth bearer token.
cspBearerToken :: Lens' CallSetsPatch (Maybe Text)
cspBearerToken
  = lens _cspBearerToken
      (\ s a -> s{_cspBearerToken = a})

-- | The ID of the call set to be updated.
cspCallSetId :: Lens' CallSetsPatch Text
cspCallSetId
  = lens _cspCallSetId (\ s a -> s{_cspCallSetId = a})

-- | JSONP
cspCallback :: Lens' CallSetsPatch (Maybe Text)
cspCallback
  = lens _cspCallback (\ s a -> s{_cspCallback = a})

instance GoogleRequest CallSetsPatch where
        type Rs CallSetsPatch = CallSet
        type Scopes CallSetsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient CallSetsPatch'{..}
          = go _cspCallSetId _cspXgafv _cspUploadProtocol
              _cspUpdateMask
              (Just _cspPp)
              _cspAccessToken
              _cspUploadType
              _cspBearerToken
              _cspCallback
              (Just AltJSON)
              _cspPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy CallSetsPatchResource)
                      mempty
