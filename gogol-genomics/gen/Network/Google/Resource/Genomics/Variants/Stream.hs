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
-- Module      : Network.Google.Resource.Genomics.Variants.Stream
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a stream of all the variants matching the search request,
-- ordered by reference name, position, and ID.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variants.stream@.
module Network.Google.Resource.Genomics.Variants.Stream
    (
    -- * REST Resource
      VariantsStreamResource

    -- * Creating a Request
    , variantsStream
    , VariantsStream

    -- * Request Lenses
    , vXgafv
    , vUploadProtocol
    , vPp
    , vAccessToken
    , vUploadType
    , vPayload
    , vBearerToken
    , vCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variants.stream@ method which the
-- 'VariantsStream' request conforms to.
type VariantsStreamResource =
     "v1" :>
       "variants:stream" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] StreamVariantsRequest :>
                           Post '[JSON] StreamVariantsResponse

-- | Returns a stream of all the variants matching the search request,
-- ordered by reference name, position, and ID.
--
-- /See:/ 'variantsStream' smart constructor.
data VariantsStream = VariantsStream
    { _vXgafv          :: !(Maybe Text)
    , _vUploadProtocol :: !(Maybe Text)
    , _vPp             :: !Bool
    , _vAccessToken    :: !(Maybe Text)
    , _vUploadType     :: !(Maybe Text)
    , _vPayload        :: !StreamVariantsRequest
    , _vBearerToken    :: !(Maybe Text)
    , _vCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vXgafv'
--
-- * 'vUploadProtocol'
--
-- * 'vPp'
--
-- * 'vAccessToken'
--
-- * 'vUploadType'
--
-- * 'vPayload'
--
-- * 'vBearerToken'
--
-- * 'vCallback'
variantsStream
    :: StreamVariantsRequest -- ^ 'vPayload'
    -> VariantsStream
variantsStream pVPayload_ =
    VariantsStream
    { _vXgafv = Nothing
    , _vUploadProtocol = Nothing
    , _vPp = True
    , _vAccessToken = Nothing
    , _vUploadType = Nothing
    , _vPayload = pVPayload_
    , _vBearerToken = Nothing
    , _vCallback = Nothing
    }

-- | V1 error format.
vXgafv :: Lens' VariantsStream (Maybe Text)
vXgafv = lens _vXgafv (\ s a -> s{_vXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vUploadProtocol :: Lens' VariantsStream (Maybe Text)
vUploadProtocol
  = lens _vUploadProtocol
      (\ s a -> s{_vUploadProtocol = a})

-- | Pretty-print response.
vPp :: Lens' VariantsStream Bool
vPp = lens _vPp (\ s a -> s{_vPp = a})

-- | OAuth access token.
vAccessToken :: Lens' VariantsStream (Maybe Text)
vAccessToken
  = lens _vAccessToken (\ s a -> s{_vAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vUploadType :: Lens' VariantsStream (Maybe Text)
vUploadType
  = lens _vUploadType (\ s a -> s{_vUploadType = a})

-- | Multipart request metadata.
vPayload :: Lens' VariantsStream StreamVariantsRequest
vPayload = lens _vPayload (\ s a -> s{_vPayload = a})

-- | OAuth bearer token.
vBearerToken :: Lens' VariantsStream (Maybe Text)
vBearerToken
  = lens _vBearerToken (\ s a -> s{_vBearerToken = a})

-- | JSONP
vCallback :: Lens' VariantsStream (Maybe Text)
vCallback
  = lens _vCallback (\ s a -> s{_vCallback = a})

instance GoogleRequest VariantsStream where
        type Rs VariantsStream = StreamVariantsResponse
        type Scopes VariantsStream =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantsStream{..}
          = go _vXgafv _vUploadProtocol (Just _vPp)
              _vAccessToken
              _vUploadType
              _vBearerToken
              _vCallback
              (Just AltJSON)
              _vPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsStreamResource)
                      mempty
