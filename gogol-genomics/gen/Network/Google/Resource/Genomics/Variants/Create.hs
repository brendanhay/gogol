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
-- Module      : Network.Google.Resource.Genomics.Variants.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new variant.
--
-- /See:/ < Genomics API Reference> for @genomics.variants.create@.
module Network.Google.Resource.Genomics.Variants.Create
    (
    -- * REST Resource
      VariantsCreateResource

    -- * Creating a Request
    , variantsCreate'
    , VariantsCreate'

    -- * Request Lenses
    , varXgafv
    , varUploadProtocol
    , varPp
    , varAccessToken
    , varUploadType
    , varPayload
    , varBearerToken
    , varCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variants.create@ method which the
-- 'VariantsCreate'' request conforms to.
type VariantsCreateResource =
     "v1" :>
       "variants" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Variant :> Post '[JSON] Variant

-- | Creates a new variant.
--
-- /See:/ 'variantsCreate'' smart constructor.
data VariantsCreate' = VariantsCreate'
    { _varXgafv          :: !(Maybe Text)
    , _varUploadProtocol :: !(Maybe Text)
    , _varPp             :: !Bool
    , _varAccessToken    :: !(Maybe Text)
    , _varUploadType     :: !(Maybe Text)
    , _varPayload        :: !Variant
    , _varBearerToken    :: !(Maybe Text)
    , _varCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varXgafv'
--
-- * 'varUploadProtocol'
--
-- * 'varPp'
--
-- * 'varAccessToken'
--
-- * 'varUploadType'
--
-- * 'varPayload'
--
-- * 'varBearerToken'
--
-- * 'varCallback'
variantsCreate'
    :: Variant -- ^ 'varPayload'
    -> VariantsCreate'
variantsCreate' pVarPayload_ =
    VariantsCreate'
    { _varXgafv = Nothing
    , _varUploadProtocol = Nothing
    , _varPp = True
    , _varAccessToken = Nothing
    , _varUploadType = Nothing
    , _varPayload = pVarPayload_
    , _varBearerToken = Nothing
    , _varCallback = Nothing
    }

-- | V1 error format.
varXgafv :: Lens' VariantsCreate' (Maybe Text)
varXgafv = lens _varXgafv (\ s a -> s{_varXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
varUploadProtocol :: Lens' VariantsCreate' (Maybe Text)
varUploadProtocol
  = lens _varUploadProtocol
      (\ s a -> s{_varUploadProtocol = a})

-- | Pretty-print response.
varPp :: Lens' VariantsCreate' Bool
varPp = lens _varPp (\ s a -> s{_varPp = a})

-- | OAuth access token.
varAccessToken :: Lens' VariantsCreate' (Maybe Text)
varAccessToken
  = lens _varAccessToken
      (\ s a -> s{_varAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
varUploadType :: Lens' VariantsCreate' (Maybe Text)
varUploadType
  = lens _varUploadType
      (\ s a -> s{_varUploadType = a})

-- | Multipart request metadata.
varPayload :: Lens' VariantsCreate' Variant
varPayload
  = lens _varPayload (\ s a -> s{_varPayload = a})

-- | OAuth bearer token.
varBearerToken :: Lens' VariantsCreate' (Maybe Text)
varBearerToken
  = lens _varBearerToken
      (\ s a -> s{_varBearerToken = a})

-- | JSONP
varCallback :: Lens' VariantsCreate' (Maybe Text)
varCallback
  = lens _varCallback (\ s a -> s{_varCallback = a})

instance GoogleRequest VariantsCreate' where
        type Rs VariantsCreate' = Variant
        requestClient VariantsCreate'{..}
          = go _varXgafv _varUploadProtocol (Just _varPp)
              _varAccessToken
              _varUploadType
              _varBearerToken
              _varCallback
              (Just AltJSON)
              _varPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsCreateResource)
                      mempty
