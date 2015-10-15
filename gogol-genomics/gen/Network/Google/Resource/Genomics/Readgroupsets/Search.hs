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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for read group sets matching the criteria. Implements
-- [GlobalAllianceApi.searchReadGroupSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L135).
--
-- /See:/ < Genomics API Reference> for @GenomicsReadgroupsetsSearch@.
module Network.Google.Resource.Genomics.Readgroupsets.Search
    (
    -- * REST Resource
      ReadgroupsetsSearchResource

    -- * Creating a Request
    , readgroupsetsSearch'
    , ReadgroupsetsSearch'

    -- * Request Lenses
    , reaXgafv
    , reaUploadProtocol
    , reaPp
    , reaAccessToken
    , reaUploadType
    , reaPayload
    , reaBearerToken
    , reaCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsSearch@ method which the
-- 'ReadgroupsetsSearch'' request conforms to.
type ReadgroupsetsSearchResource =
     "v1" :>
       "readgroupsets" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchReadGroupSetsRequest :>
                             Post '[JSON] SearchReadGroupSetsResponse

-- | Searches for read group sets matching the criteria. Implements
-- [GlobalAllianceApi.searchReadGroupSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L135).
--
-- /See:/ 'readgroupsetsSearch'' smart constructor.
data ReadgroupsetsSearch' = ReadgroupsetsSearch'
    { _reaXgafv          :: !(Maybe Text)
    , _reaUploadProtocol :: !(Maybe Text)
    , _reaPp             :: !Bool
    , _reaAccessToken    :: !(Maybe Text)
    , _reaUploadType     :: !(Maybe Text)
    , _reaPayload        :: !SearchReadGroupSetsRequest
    , _reaBearerToken    :: !(Maybe Text)
    , _reaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaXgafv'
--
-- * 'reaUploadProtocol'
--
-- * 'reaPp'
--
-- * 'reaAccessToken'
--
-- * 'reaUploadType'
--
-- * 'reaPayload'
--
-- * 'reaBearerToken'
--
-- * 'reaCallback'
readgroupsetsSearch'
    :: SearchReadGroupSetsRequest -- ^ 'payload'
    -> ReadgroupsetsSearch'
readgroupsetsSearch' pReaPayload_ =
    ReadgroupsetsSearch'
    { _reaXgafv = Nothing
    , _reaUploadProtocol = Nothing
    , _reaPp = True
    , _reaAccessToken = Nothing
    , _reaUploadType = Nothing
    , _reaPayload = pReaPayload_
    , _reaBearerToken = Nothing
    , _reaCallback = Nothing
    }

-- | V1 error format.
reaXgafv :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaXgafv = lens _reaXgafv (\ s a -> s{_reaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
reaUploadProtocol :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaUploadProtocol
  = lens _reaUploadProtocol
      (\ s a -> s{_reaUploadProtocol = a})

-- | Pretty-print response.
reaPp :: Lens' ReadgroupsetsSearch' Bool
reaPp = lens _reaPp (\ s a -> s{_reaPp = a})

-- | OAuth access token.
reaAccessToken :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaAccessToken
  = lens _reaAccessToken
      (\ s a -> s{_reaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
reaUploadType :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaUploadType
  = lens _reaUploadType
      (\ s a -> s{_reaUploadType = a})

-- | Multipart request metadata.
reaPayload :: Lens' ReadgroupsetsSearch' SearchReadGroupSetsRequest
reaPayload
  = lens _reaPayload (\ s a -> s{_reaPayload = a})

-- | OAuth bearer token.
reaBearerToken :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaBearerToken
  = lens _reaBearerToken
      (\ s a -> s{_reaBearerToken = a})

-- | JSONP
reaCallback :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaCallback
  = lens _reaCallback (\ s a -> s{_reaCallback = a})

instance GoogleRequest ReadgroupsetsSearch' where
        type Rs ReadgroupsetsSearch' =
             SearchReadGroupSetsResponse
        requestClient ReadgroupsetsSearch'{..}
          = go _reaXgafv _reaUploadProtocol (Just _reaPp)
              _reaAccessToken
              _reaUploadType
              _reaBearerToken
              _reaCallback
              (Just AltJSON)
              _reaPayload
              genomics
          where go
                  = buildClient
                      (Proxy :: Proxy ReadgroupsetsSearchResource)
                      mempty
