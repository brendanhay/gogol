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
-- Module      : Network.Google.Resource.Genomics.References.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a reference. For the definitions of references and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.getReference](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L158).
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.references.get@.
module Network.Google.Resource.Genomics.References.Get
    (
    -- * REST Resource
      ReferencesGetResource

    -- * Creating a Request
    , referencesGet
    , ReferencesGet

    -- * Request Lenses
    , rXgafv
    , rUploadProtocol
    , rPp
    , rAccessToken
    , rUploadType
    , rReferenceId
    , rBearerToken
    , rCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.references.get@ method which the
-- 'ReferencesGet' request conforms to.
type ReferencesGetResource =
     "v1" :>
       "references" :>
         Capture "referenceId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Reference

-- | Gets a reference. For the definitions of references and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.getReference](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L158).
--
-- /See:/ 'referencesGet' smart constructor.
data ReferencesGet = ReferencesGet
    { _rXgafv          :: !(Maybe Text)
    , _rUploadProtocol :: !(Maybe Text)
    , _rPp             :: !Bool
    , _rAccessToken    :: !(Maybe Text)
    , _rUploadType     :: !(Maybe Text)
    , _rReferenceId    :: !Text
    , _rBearerToken    :: !(Maybe Text)
    , _rCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rXgafv'
--
-- * 'rUploadProtocol'
--
-- * 'rPp'
--
-- * 'rAccessToken'
--
-- * 'rUploadType'
--
-- * 'rReferenceId'
--
-- * 'rBearerToken'
--
-- * 'rCallback'
referencesGet
    :: Text -- ^ 'rReferenceId'
    -> ReferencesGet
referencesGet pRReferenceId_ =
    ReferencesGet
    { _rXgafv = Nothing
    , _rUploadProtocol = Nothing
    , _rPp = True
    , _rAccessToken = Nothing
    , _rUploadType = Nothing
    , _rReferenceId = pRReferenceId_
    , _rBearerToken = Nothing
    , _rCallback = Nothing
    }

-- | V1 error format.
rXgafv :: Lens' ReferencesGet (Maybe Text)
rXgafv = lens _rXgafv (\ s a -> s{_rXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rUploadProtocol :: Lens' ReferencesGet (Maybe Text)
rUploadProtocol
  = lens _rUploadProtocol
      (\ s a -> s{_rUploadProtocol = a})

-- | Pretty-print response.
rPp :: Lens' ReferencesGet Bool
rPp = lens _rPp (\ s a -> s{_rPp = a})

-- | OAuth access token.
rAccessToken :: Lens' ReferencesGet (Maybe Text)
rAccessToken
  = lens _rAccessToken (\ s a -> s{_rAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rUploadType :: Lens' ReferencesGet (Maybe Text)
rUploadType
  = lens _rUploadType (\ s a -> s{_rUploadType = a})

-- | The ID of the reference.
rReferenceId :: Lens' ReferencesGet Text
rReferenceId
  = lens _rReferenceId (\ s a -> s{_rReferenceId = a})

-- | OAuth bearer token.
rBearerToken :: Lens' ReferencesGet (Maybe Text)
rBearerToken
  = lens _rBearerToken (\ s a -> s{_rBearerToken = a})

-- | JSONP
rCallback :: Lens' ReferencesGet (Maybe Text)
rCallback
  = lens _rCallback (\ s a -> s{_rCallback = a})

instance GoogleRequest ReferencesGet where
        type Rs ReferencesGet = Reference
        requestClient ReferencesGet{..}
          = go _rReferenceId _rXgafv _rUploadProtocol
              (Just _rPp)
              _rAccessToken
              _rUploadType
              _rBearerToken
              _rCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy ReferencesGetResource)
                      mempty
