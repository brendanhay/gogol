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
-- Module      : Network.Google.Resource.Genomics.Callsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a call set. This method supports patch semantics.
--
-- /See:/ < Genomics API Reference> for @GenomicsCallsetsPatch@.
module Network.Google.Resource.Genomics.Callsets.Patch
    (
    -- * REST Resource
      CallsetsPatchResource

    -- * Creating a Request
    , callsetsPatch'
    , CallsetsPatch'

    -- * Request Lenses
    , cpXgafv
    , cpUploadProtocol
    , cpUpdateMask
    , cpPp
    , cpAccessToken
    , cpUploadType
    , cpPayload
    , cpBearerToken
    , cpCallSetId
    , cpCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsPatch@ method which the
-- 'CallsetsPatch'' request conforms to.
type CallsetsPatchResource =
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

-- | Updates a call set. This method supports patch semantics.
--
-- /See:/ 'callsetsPatch'' smart constructor.
data CallsetsPatch' = CallsetsPatch'
    { _cpXgafv          :: !(Maybe Text)
    , _cpUploadProtocol :: !(Maybe Text)
    , _cpUpdateMask     :: !(Maybe Text)
    , _cpPp             :: !Bool
    , _cpAccessToken    :: !(Maybe Text)
    , _cpUploadType     :: !(Maybe Text)
    , _cpPayload        :: !CallSet
    , _cpBearerToken    :: !(Maybe Text)
    , _cpCallSetId      :: !Text
    , _cpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpXgafv'
--
-- * 'cpUploadProtocol'
--
-- * 'cpUpdateMask'
--
-- * 'cpPp'
--
-- * 'cpAccessToken'
--
-- * 'cpUploadType'
--
-- * 'cpPayload'
--
-- * 'cpBearerToken'
--
-- * 'cpCallSetId'
--
-- * 'cpCallback'
callsetsPatch'
    :: CallSet -- ^ 'payload'
    -> Text -- ^ 'callSetId'
    -> CallsetsPatch'
callsetsPatch' pCpPayload_ pCpCallSetId_ =
    CallsetsPatch'
    { _cpXgafv = Nothing
    , _cpUploadProtocol = Nothing
    , _cpUpdateMask = Nothing
    , _cpPp = True
    , _cpAccessToken = Nothing
    , _cpUploadType = Nothing
    , _cpPayload = pCpPayload_
    , _cpBearerToken = Nothing
    , _cpCallSetId = pCpCallSetId_
    , _cpCallback = Nothing
    }

-- | V1 error format.
cpXgafv :: Lens' CallsetsPatch' (Maybe Text)
cpXgafv = lens _cpXgafv (\ s a -> s{_cpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpUploadProtocol :: Lens' CallsetsPatch' (Maybe Text)
cpUploadProtocol
  = lens _cpUploadProtocol
      (\ s a -> s{_cpUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time, the
-- only mutable field is name. The only acceptable value is \"name\". If
-- unspecified, all mutable fields will be updated.
cpUpdateMask :: Lens' CallsetsPatch' (Maybe Text)
cpUpdateMask
  = lens _cpUpdateMask (\ s a -> s{_cpUpdateMask = a})

-- | Pretty-print response.
cpPp :: Lens' CallsetsPatch' Bool
cpPp = lens _cpPp (\ s a -> s{_cpPp = a})

-- | OAuth access token.
cpAccessToken :: Lens' CallsetsPatch' (Maybe Text)
cpAccessToken
  = lens _cpAccessToken
      (\ s a -> s{_cpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpUploadType :: Lens' CallsetsPatch' (Maybe Text)
cpUploadType
  = lens _cpUploadType (\ s a -> s{_cpUploadType = a})

-- | Multipart request metadata.
cpPayload :: Lens' CallsetsPatch' CallSet
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | OAuth bearer token.
cpBearerToken :: Lens' CallsetsPatch' (Maybe Text)
cpBearerToken
  = lens _cpBearerToken
      (\ s a -> s{_cpBearerToken = a})

-- | The ID of the call set to be updated.
cpCallSetId :: Lens' CallsetsPatch' Text
cpCallSetId
  = lens _cpCallSetId (\ s a -> s{_cpCallSetId = a})

-- | JSONP
cpCallback :: Lens' CallsetsPatch' (Maybe Text)
cpCallback
  = lens _cpCallback (\ s a -> s{_cpCallback = a})

instance GoogleRequest CallsetsPatch' where
        type Rs CallsetsPatch' = CallSet
        requestClient CallsetsPatch'{..}
          = go _cpCallSetId _cpXgafv _cpUploadProtocol
              _cpUpdateMask
              (Just _cpPp)
              _cpAccessToken
              _cpUploadType
              _cpBearerToken
              _cpCallback
              (Just AltJSON)
              _cpPayload
              genomics
          where go
                  = buildClient (Proxy :: Proxy CallsetsPatchResource)
                      mempty
