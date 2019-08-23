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
-- Module      : Network.Google.Resource.SafeBrowsing.FullHashes.Find
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds the full hashes that match the requested hash prefixes.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.fullHashes.find@.
module Network.Google.Resource.SafeBrowsing.FullHashes.Find
    (
    -- * REST Resource
      FullHashesFindResource

    -- * Creating a Request
    , fullHashesFind
    , FullHashesFind

    -- * Request Lenses
    , fhfXgafv
    , fhfUploadProtocol
    , fhfAccessToken
    , fhfUploadType
    , fhfPayload
    , fhfCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.fullHashes.find@ method which the
-- 'FullHashesFind' request conforms to.
type FullHashesFindResource =
     "v4" :>
       "fullHashes:find" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] FindFullHashesRequest :>
                       Post '[JSON] FindFullHashesResponse

-- | Finds the full hashes that match the requested hash prefixes.
--
-- /See:/ 'fullHashesFind' smart constructor.
data FullHashesFind =
  FullHashesFind'
    { _fhfXgafv          :: !(Maybe Xgafv)
    , _fhfUploadProtocol :: !(Maybe Text)
    , _fhfAccessToken    :: !(Maybe Text)
    , _fhfUploadType     :: !(Maybe Text)
    , _fhfPayload        :: !FindFullHashesRequest
    , _fhfCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FullHashesFind' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fhfXgafv'
--
-- * 'fhfUploadProtocol'
--
-- * 'fhfAccessToken'
--
-- * 'fhfUploadType'
--
-- * 'fhfPayload'
--
-- * 'fhfCallback'
fullHashesFind
    :: FindFullHashesRequest -- ^ 'fhfPayload'
    -> FullHashesFind
fullHashesFind pFhfPayload_ =
  FullHashesFind'
    { _fhfXgafv = Nothing
    , _fhfUploadProtocol = Nothing
    , _fhfAccessToken = Nothing
    , _fhfUploadType = Nothing
    , _fhfPayload = pFhfPayload_
    , _fhfCallback = Nothing
    }


-- | V1 error format.
fhfXgafv :: Lens' FullHashesFind (Maybe Xgafv)
fhfXgafv = lens _fhfXgafv (\ s a -> s{_fhfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fhfUploadProtocol :: Lens' FullHashesFind (Maybe Text)
fhfUploadProtocol
  = lens _fhfUploadProtocol
      (\ s a -> s{_fhfUploadProtocol = a})

-- | OAuth access token.
fhfAccessToken :: Lens' FullHashesFind (Maybe Text)
fhfAccessToken
  = lens _fhfAccessToken
      (\ s a -> s{_fhfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fhfUploadType :: Lens' FullHashesFind (Maybe Text)
fhfUploadType
  = lens _fhfUploadType
      (\ s a -> s{_fhfUploadType = a})

-- | Multipart request metadata.
fhfPayload :: Lens' FullHashesFind FindFullHashesRequest
fhfPayload
  = lens _fhfPayload (\ s a -> s{_fhfPayload = a})

-- | JSONP
fhfCallback :: Lens' FullHashesFind (Maybe Text)
fhfCallback
  = lens _fhfCallback (\ s a -> s{_fhfCallback = a})

instance GoogleRequest FullHashesFind where
        type Rs FullHashesFind = FindFullHashesResponse
        type Scopes FullHashesFind = '[]
        requestClient FullHashesFind'{..}
          = go _fhfXgafv _fhfUploadProtocol _fhfAccessToken
              _fhfUploadType
              _fhfCallback
              (Just AltJSON)
              _fhfPayload
              safeBrowsingService
          where go
                  = buildClient (Proxy :: Proxy FullHashesFindResource)
                      mempty
