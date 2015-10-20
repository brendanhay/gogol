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
-- Gets a reference. Implements
-- [GlobalAllianceApi.getReference](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L158).
--
-- /See:/ < Genomics API Reference> for @genomics.references.get@.
module Network.Google.Resource.Genomics.References.Get
    (
    -- * REST Resource
      ReferencesGetResource

    -- * Creating a Request
    , referencesGet
    , ReferencesGet

    -- * Request Lenses
    , refXgafv
    , refUploadProtocol
    , refPp
    , refAccessToken
    , refUploadType
    , refReferenceId
    , refBearerToken
    , refCallback
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

-- | Gets a reference. Implements
-- [GlobalAllianceApi.getReference](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L158).
--
-- /See:/ 'referencesGet' smart constructor.
data ReferencesGet = ReferencesGet
    { _refXgafv          :: !(Maybe Text)
    , _refUploadProtocol :: !(Maybe Text)
    , _refPp             :: !Bool
    , _refAccessToken    :: !(Maybe Text)
    , _refUploadType     :: !(Maybe Text)
    , _refReferenceId    :: !Text
    , _refBearerToken    :: !(Maybe Text)
    , _refCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'refXgafv'
--
-- * 'refUploadProtocol'
--
-- * 'refPp'
--
-- * 'refAccessToken'
--
-- * 'refUploadType'
--
-- * 'refReferenceId'
--
-- * 'refBearerToken'
--
-- * 'refCallback'
referencesGet
    :: Text -- ^ 'refReferenceId'
    -> ReferencesGet
referencesGet pRefReferenceId_ =
    ReferencesGet
    { _refXgafv = Nothing
    , _refUploadProtocol = Nothing
    , _refPp = True
    , _refAccessToken = Nothing
    , _refUploadType = Nothing
    , _refReferenceId = pRefReferenceId_
    , _refBearerToken = Nothing
    , _refCallback = Nothing
    }

-- | V1 error format.
refXgafv :: Lens' ReferencesGet (Maybe Text)
refXgafv = lens _refXgafv (\ s a -> s{_refXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
refUploadProtocol :: Lens' ReferencesGet (Maybe Text)
refUploadProtocol
  = lens _refUploadProtocol
      (\ s a -> s{_refUploadProtocol = a})

-- | Pretty-print response.
refPp :: Lens' ReferencesGet Bool
refPp = lens _refPp (\ s a -> s{_refPp = a})

-- | OAuth access token.
refAccessToken :: Lens' ReferencesGet (Maybe Text)
refAccessToken
  = lens _refAccessToken
      (\ s a -> s{_refAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
refUploadType :: Lens' ReferencesGet (Maybe Text)
refUploadType
  = lens _refUploadType
      (\ s a -> s{_refUploadType = a})

-- | The ID of the reference.
refReferenceId :: Lens' ReferencesGet Text
refReferenceId
  = lens _refReferenceId
      (\ s a -> s{_refReferenceId = a})

-- | OAuth bearer token.
refBearerToken :: Lens' ReferencesGet (Maybe Text)
refBearerToken
  = lens _refBearerToken
      (\ s a -> s{_refBearerToken = a})

-- | JSONP
refCallback :: Lens' ReferencesGet (Maybe Text)
refCallback
  = lens _refCallback (\ s a -> s{_refCallback = a})

instance GoogleRequest ReferencesGet where
        type Rs ReferencesGet = Reference
        requestClient ReferencesGet{..}
          = go _refReferenceId _refXgafv _refUploadProtocol
              (Just _refPp)
              _refAccessToken
              _refUploadType
              _refBearerToken
              _refCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy ReferencesGetResource)
                      mempty
