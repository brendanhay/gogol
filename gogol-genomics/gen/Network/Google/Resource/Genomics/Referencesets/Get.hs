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
-- Module      : Network.Google.Resource.Genomics.Referencesets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a reference set. For the definitions of references and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.getReferenceSet](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L83).
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.referencesets.get@.
module Network.Google.Resource.Genomics.Referencesets.Get
    (
    -- * REST Resource
      ReferencesetsGetResource

    -- * Creating a Request
    , referencesetsGet
    , ReferencesetsGet

    -- * Request Lenses
    , rgReferenceSetId
    , rgXgafv
    , rgUploadProtocol
    , rgPp
    , rgAccessToken
    , rgUploadType
    , rgBearerToken
    , rgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.referencesets.get@ method which the
-- 'ReferencesetsGet' request conforms to.
type ReferencesetsGetResource =
     "v1" :>
       "referencesets" :>
         Capture "referenceSetId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ReferenceSet

-- | Gets a reference set. For the definitions of references and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.getReferenceSet](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L83).
--
-- /See:/ 'referencesetsGet' smart constructor.
data ReferencesetsGet = ReferencesetsGet'
    { _rgReferenceSetId :: !Text
    , _rgXgafv          :: !(Maybe Xgafv)
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgPp             :: !Bool
    , _rgAccessToken    :: !(Maybe Text)
    , _rgUploadType     :: !(Maybe Text)
    , _rgBearerToken    :: !(Maybe Text)
    , _rgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgReferenceSetId'
--
-- * 'rgXgafv'
--
-- * 'rgUploadProtocol'
--
-- * 'rgPp'
--
-- * 'rgAccessToken'
--
-- * 'rgUploadType'
--
-- * 'rgBearerToken'
--
-- * 'rgCallback'
referencesetsGet
    :: Text -- ^ 'rgReferenceSetId'
    -> ReferencesetsGet
referencesetsGet pRgReferenceSetId_ =
    ReferencesetsGet'
    { _rgReferenceSetId = pRgReferenceSetId_
    , _rgXgafv = Nothing
    , _rgUploadProtocol = Nothing
    , _rgPp = True
    , _rgAccessToken = Nothing
    , _rgUploadType = Nothing
    , _rgBearerToken = Nothing
    , _rgCallback = Nothing
    }

-- | The ID of the reference set.
rgReferenceSetId :: Lens' ReferencesetsGet Text
rgReferenceSetId
  = lens _rgReferenceSetId
      (\ s a -> s{_rgReferenceSetId = a})

-- | V1 error format.
rgXgafv :: Lens' ReferencesetsGet (Maybe Xgafv)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' ReferencesetsGet (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | Pretty-print response.
rgPp :: Lens' ReferencesetsGet Bool
rgPp = lens _rgPp (\ s a -> s{_rgPp = a})

-- | OAuth access token.
rgAccessToken :: Lens' ReferencesetsGet (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' ReferencesetsGet (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | OAuth bearer token.
rgBearerToken :: Lens' ReferencesetsGet (Maybe Text)
rgBearerToken
  = lens _rgBearerToken
      (\ s a -> s{_rgBearerToken = a})

-- | JSONP
rgCallback :: Lens' ReferencesetsGet (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

instance GoogleRequest ReferencesetsGet where
        type Rs ReferencesetsGet = ReferenceSet
        type Scopes ReferencesetsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient ReferencesetsGet'{..}
          = go _rgReferenceSetId _rgXgafv _rgUploadProtocol
              (Just _rgPp)
              _rgAccessToken
              _rgUploadType
              _rgBearerToken
              _rgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReferencesetsGetResource)
                      mempty
