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
-- Module      : Network.Google.Resource.Genomics.Variants.Merge
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Merges the given variants with existing variants. For the definitions of
-- variants and other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Each variant will be merged with an existing variant that matches its
-- reference sequence, start, end, reference bases, and alternative bases.
-- If no such variant exists, a new one will be created. When variants are
-- merged, the call information from the new variant is added to the
-- existing variant. Variant info fields are merged as specified in the
-- infoMergeConfig field of the MergeVariantsRequest. Please exercise
-- caution when using this method! It is easy to introduce mistakes in
-- existing variants and difficult to back out of them. For example,
-- suppose you were trying to merge a new variant with an existing one and
-- both variants contain calls that belong to callsets with the same
-- callset ID. \/\/ Existing variant - irrelevant fields trimmed for
-- clarity { \"variantSetId\": \"10473108253681171589\", \"referenceName\":
-- \"1\", \"start\": \"10582\", \"referenceBases\": \"G\",
-- \"alternateBases\": [ \"A\" ], \"calls\": [ { \"callSetId\":
-- \"10473108253681171589-0\", \"callSetName\": \"CALLSET0\", \"genotype\":
-- [ 0, 1 ], } ] } \/\/ New variant with conflicting call information {
-- \"variantSetId\": \"10473108253681171589\", \"referenceName\": \"1\",
-- \"start\": \"10582\", \"referenceBases\": \"G\", \"alternateBases\": [
-- \"A\" ], \"calls\": [ { \"callSetId\": \"10473108253681171589-0\",
-- \"callSetName\": \"CALLSET0\", \"genotype\": [ 1, 1 ], } ] } The
-- resulting merged variant would overwrite the existing calls with those
-- from the new variant: { \"variantSetId\": \"10473108253681171589\",
-- \"referenceName\": \"1\", \"start\": \"10582\", \"referenceBases\":
-- \"G\", \"alternateBases\": [ \"A\" ], \"calls\": [ { \"callSetId\":
-- \"10473108253681171589-0\", \"callSetName\": \"CALLSET0\", \"genotype\":
-- [ 1, 1 ], } ] } This may be the desired outcome, but it is up to the
-- user to determine if if that is indeed the case.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variants.merge@.
module Network.Google.Resource.Genomics.Variants.Merge
    (
    -- * REST Resource
      VariantsMergeResource

    -- * Creating a Request
    , variantsMerge
    , VariantsMerge

    -- * Request Lenses
    , vmXgafv
    , vmUploadProtocol
    , vmPp
    , vmAccessToken
    , vmUploadType
    , vmPayload
    , vmBearerToken
    , vmCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variants.merge@ method which the
-- 'VariantsMerge' request conforms to.
type VariantsMergeResource =
     "v1" :>
       "variants:merge" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] MergeVariantsRequest :>
                           Post '[JSON] Empty

-- | Merges the given variants with existing variants. For the definitions of
-- variants and other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Each variant will be merged with an existing variant that matches its
-- reference sequence, start, end, reference bases, and alternative bases.
-- If no such variant exists, a new one will be created. When variants are
-- merged, the call information from the new variant is added to the
-- existing variant. Variant info fields are merged as specified in the
-- infoMergeConfig field of the MergeVariantsRequest. Please exercise
-- caution when using this method! It is easy to introduce mistakes in
-- existing variants and difficult to back out of them. For example,
-- suppose you were trying to merge a new variant with an existing one and
-- both variants contain calls that belong to callsets with the same
-- callset ID. \/\/ Existing variant - irrelevant fields trimmed for
-- clarity { \"variantSetId\": \"10473108253681171589\", \"referenceName\":
-- \"1\", \"start\": \"10582\", \"referenceBases\": \"G\",
-- \"alternateBases\": [ \"A\" ], \"calls\": [ { \"callSetId\":
-- \"10473108253681171589-0\", \"callSetName\": \"CALLSET0\", \"genotype\":
-- [ 0, 1 ], } ] } \/\/ New variant with conflicting call information {
-- \"variantSetId\": \"10473108253681171589\", \"referenceName\": \"1\",
-- \"start\": \"10582\", \"referenceBases\": \"G\", \"alternateBases\": [
-- \"A\" ], \"calls\": [ { \"callSetId\": \"10473108253681171589-0\",
-- \"callSetName\": \"CALLSET0\", \"genotype\": [ 1, 1 ], } ] } The
-- resulting merged variant would overwrite the existing calls with those
-- from the new variant: { \"variantSetId\": \"10473108253681171589\",
-- \"referenceName\": \"1\", \"start\": \"10582\", \"referenceBases\":
-- \"G\", \"alternateBases\": [ \"A\" ], \"calls\": [ { \"callSetId\":
-- \"10473108253681171589-0\", \"callSetName\": \"CALLSET0\", \"genotype\":
-- [ 1, 1 ], } ] } This may be the desired outcome, but it is up to the
-- user to determine if if that is indeed the case.
--
-- /See:/ 'variantsMerge' smart constructor.
data VariantsMerge = VariantsMerge'
    { _vmXgafv          :: !(Maybe Text)
    , _vmUploadProtocol :: !(Maybe Text)
    , _vmPp             :: !Bool
    , _vmAccessToken    :: !(Maybe Text)
    , _vmUploadType     :: !(Maybe Text)
    , _vmPayload        :: !MergeVariantsRequest
    , _vmBearerToken    :: !(Maybe Text)
    , _vmCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsMerge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmXgafv'
--
-- * 'vmUploadProtocol'
--
-- * 'vmPp'
--
-- * 'vmAccessToken'
--
-- * 'vmUploadType'
--
-- * 'vmPayload'
--
-- * 'vmBearerToken'
--
-- * 'vmCallback'
variantsMerge
    :: MergeVariantsRequest -- ^ 'vmPayload'
    -> VariantsMerge
variantsMerge pVmPayload_ =
    VariantsMerge'
    { _vmXgafv = Nothing
    , _vmUploadProtocol = Nothing
    , _vmPp = True
    , _vmAccessToken = Nothing
    , _vmUploadType = Nothing
    , _vmPayload = pVmPayload_
    , _vmBearerToken = Nothing
    , _vmCallback = Nothing
    }

-- | V1 error format.
vmXgafv :: Lens' VariantsMerge (Maybe Text)
vmXgafv = lens _vmXgafv (\ s a -> s{_vmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vmUploadProtocol :: Lens' VariantsMerge (Maybe Text)
vmUploadProtocol
  = lens _vmUploadProtocol
      (\ s a -> s{_vmUploadProtocol = a})

-- | Pretty-print response.
vmPp :: Lens' VariantsMerge Bool
vmPp = lens _vmPp (\ s a -> s{_vmPp = a})

-- | OAuth access token.
vmAccessToken :: Lens' VariantsMerge (Maybe Text)
vmAccessToken
  = lens _vmAccessToken
      (\ s a -> s{_vmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vmUploadType :: Lens' VariantsMerge (Maybe Text)
vmUploadType
  = lens _vmUploadType (\ s a -> s{_vmUploadType = a})

-- | Multipart request metadata.
vmPayload :: Lens' VariantsMerge MergeVariantsRequest
vmPayload
  = lens _vmPayload (\ s a -> s{_vmPayload = a})

-- | OAuth bearer token.
vmBearerToken :: Lens' VariantsMerge (Maybe Text)
vmBearerToken
  = lens _vmBearerToken
      (\ s a -> s{_vmBearerToken = a})

-- | JSONP
vmCallback :: Lens' VariantsMerge (Maybe Text)
vmCallback
  = lens _vmCallback (\ s a -> s{_vmCallback = a})

instance GoogleRequest VariantsMerge where
        type Rs VariantsMerge = Empty
        type Scopes VariantsMerge =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantsMerge'{..}
          = go _vmXgafv _vmUploadProtocol (Just _vmPp)
              _vmAccessToken
              _vmUploadType
              _vmBearerToken
              _vmCallback
              (Just AltJSON)
              _vmPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsMergeResource)
                      mempty
