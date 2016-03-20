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
-- Module      : Network.Google.Resource.Genomics.ReadGroupSets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a read group set. For the definitions of read group sets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.readgroupsets.patch@.
module Network.Google.Resource.Genomics.ReadGroupSets.Patch
    (
    -- * REST Resource
      ReadGroupSetsPatchResource

    -- * Creating a Request
    , readGroupSetsPatch
    , ReadGroupSetsPatch

    -- * Request Lenses
    , rgspXgafv
    , rgspReadGroupSetId
    , rgspUploadProtocol
    , rgspUpdateMask
    , rgspPp
    , rgspAccessToken
    , rgspUploadType
    , rgspPayload
    , rgspBearerToken
    , rgspCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.patch@ method which the
-- 'ReadGroupSetsPatch' request conforms to.
type ReadGroupSetsPatchResource =
     "v1" :>
       "readgroupsets" :>
         Capture "readGroupSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ReadGroupSet :>
                               Patch '[JSON] ReadGroupSet

-- | Updates a read group set. For the definitions of read group sets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This method supports patch semantics.
--
-- /See:/ 'readGroupSetsPatch' smart constructor.
data ReadGroupSetsPatch = ReadGroupSetsPatch
    { _rgspXgafv          :: !(Maybe Text)
    , _rgspReadGroupSetId :: !Text
    , _rgspUploadProtocol :: !(Maybe Text)
    , _rgspUpdateMask     :: !(Maybe Text)
    , _rgspPp             :: !Bool
    , _rgspAccessToken    :: !(Maybe Text)
    , _rgspUploadType     :: !(Maybe Text)
    , _rgspPayload        :: !ReadGroupSet
    , _rgspBearerToken    :: !(Maybe Text)
    , _rgspCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSetsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgspXgafv'
--
-- * 'rgspReadGroupSetId'
--
-- * 'rgspUploadProtocol'
--
-- * 'rgspUpdateMask'
--
-- * 'rgspPp'
--
-- * 'rgspAccessToken'
--
-- * 'rgspUploadType'
--
-- * 'rgspPayload'
--
-- * 'rgspBearerToken'
--
-- * 'rgspCallback'
readGroupSetsPatch
    :: Text -- ^ 'rgspReadGroupSetId'
    -> ReadGroupSet -- ^ 'rgspPayload'
    -> ReadGroupSetsPatch
readGroupSetsPatch pRgspReadGroupSetId_ pRgspPayload_ =
    ReadGroupSetsPatch
    { _rgspXgafv = Nothing
    , _rgspReadGroupSetId = pRgspReadGroupSetId_
    , _rgspUploadProtocol = Nothing
    , _rgspUpdateMask = Nothing
    , _rgspPp = True
    , _rgspAccessToken = Nothing
    , _rgspUploadType = Nothing
    , _rgspPayload = pRgspPayload_
    , _rgspBearerToken = Nothing
    , _rgspCallback = Nothing
    }

-- | V1 error format.
rgspXgafv :: Lens' ReadGroupSetsPatch (Maybe Text)
rgspXgafv
  = lens _rgspXgafv (\ s a -> s{_rgspXgafv = a})

-- | The ID of the read group set to be updated. The caller must have WRITE
-- permissions to the dataset associated with this read group set.
rgspReadGroupSetId :: Lens' ReadGroupSetsPatch Text
rgspReadGroupSetId
  = lens _rgspReadGroupSetId
      (\ s a -> s{_rgspReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgspUploadProtocol :: Lens' ReadGroupSetsPatch (Maybe Text)
rgspUploadProtocol
  = lens _rgspUploadProtocol
      (\ s a -> s{_rgspUploadProtocol = a})

-- | An optional mask specifying which fields to update. Supported fields: *
-- name. * referenceSetId. Leaving \`updateMask\` unset is equivalent to
-- specifying all mutable fields.
rgspUpdateMask :: Lens' ReadGroupSetsPatch (Maybe Text)
rgspUpdateMask
  = lens _rgspUpdateMask
      (\ s a -> s{_rgspUpdateMask = a})

-- | Pretty-print response.
rgspPp :: Lens' ReadGroupSetsPatch Bool
rgspPp = lens _rgspPp (\ s a -> s{_rgspPp = a})

-- | OAuth access token.
rgspAccessToken :: Lens' ReadGroupSetsPatch (Maybe Text)
rgspAccessToken
  = lens _rgspAccessToken
      (\ s a -> s{_rgspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgspUploadType :: Lens' ReadGroupSetsPatch (Maybe Text)
rgspUploadType
  = lens _rgspUploadType
      (\ s a -> s{_rgspUploadType = a})

-- | Multipart request metadata.
rgspPayload :: Lens' ReadGroupSetsPatch ReadGroupSet
rgspPayload
  = lens _rgspPayload (\ s a -> s{_rgspPayload = a})

-- | OAuth bearer token.
rgspBearerToken :: Lens' ReadGroupSetsPatch (Maybe Text)
rgspBearerToken
  = lens _rgspBearerToken
      (\ s a -> s{_rgspBearerToken = a})

-- | JSONP
rgspCallback :: Lens' ReadGroupSetsPatch (Maybe Text)
rgspCallback
  = lens _rgspCallback (\ s a -> s{_rgspCallback = a})

instance GoogleRequest ReadGroupSetsPatch where
        type Rs ReadGroupSetsPatch = ReadGroupSet
        requestClient ReadGroupSetsPatch{..}
          = go _rgspReadGroupSetId _rgspXgafv
              _rgspUploadProtocol
              _rgspUpdateMask
              (Just _rgspPp)
              _rgspAccessToken
              _rgspUploadType
              _rgspBearerToken
              _rgspCallback
              (Just AltJSON)
              _rgspPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadGroupSetsPatchResource)
                      mempty
