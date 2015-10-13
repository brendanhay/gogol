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
-- Module      : Network.Google.Resource.Genomics.Callsets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new call set.
--
-- /See:/ < Genomics API Reference> for @GenomicsCallsetsCreate@.
module Network.Google.Resource.Genomics.Callsets.Create
    (
    -- * REST Resource
      CallsetsCreateResource

    -- * Creating a Request
    , callsetsCreate'
    , CallsetsCreate'

    -- * Request Lenses
    , ccXgafv
    , ccUploadProtocol
    , ccPp
    , ccAccessToken
    , ccUploadType
    , ccPayload
    , ccBearerToken
    , ccCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsCreate@ method which the
-- 'CallsetsCreate'' request conforms to.
type CallsetsCreateResource =
     "v1" :>
       "callsets" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CallSet :> Post '[JSON] CallSet

-- | Creates a new call set.
--
-- /See:/ 'callsetsCreate'' smart constructor.
data CallsetsCreate' = CallsetsCreate'
    { _ccXgafv          :: !(Maybe Text)
    , _ccUploadProtocol :: !(Maybe Text)
    , _ccPp             :: !Bool
    , _ccAccessToken    :: !(Maybe Text)
    , _ccUploadType     :: !(Maybe Text)
    , _ccPayload        :: !CallSet
    , _ccBearerToken    :: !(Maybe Text)
    , _ccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccXgafv'
--
-- * 'ccUploadProtocol'
--
-- * 'ccPp'
--
-- * 'ccAccessToken'
--
-- * 'ccUploadType'
--
-- * 'ccPayload'
--
-- * 'ccBearerToken'
--
-- * 'ccCallback'
callsetsCreate'
    :: CallSet -- ^ 'payload'
    -> CallsetsCreate'
callsetsCreate' pCcPayload_ =
    CallsetsCreate'
    { _ccXgafv = Nothing
    , _ccUploadProtocol = Nothing
    , _ccPp = True
    , _ccAccessToken = Nothing
    , _ccUploadType = Nothing
    , _ccPayload = pCcPayload_
    , _ccBearerToken = Nothing
    , _ccCallback = Nothing
    }

-- | V1 error format.
ccXgafv :: Lens' CallsetsCreate' (Maybe Text)
ccXgafv = lens _ccXgafv (\ s a -> s{_ccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccUploadProtocol :: Lens' CallsetsCreate' (Maybe Text)
ccUploadProtocol
  = lens _ccUploadProtocol
      (\ s a -> s{_ccUploadProtocol = a})

-- | Pretty-print response.
ccPp :: Lens' CallsetsCreate' Bool
ccPp = lens _ccPp (\ s a -> s{_ccPp = a})

-- | OAuth access token.
ccAccessToken :: Lens' CallsetsCreate' (Maybe Text)
ccAccessToken
  = lens _ccAccessToken
      (\ s a -> s{_ccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccUploadType :: Lens' CallsetsCreate' (Maybe Text)
ccUploadType
  = lens _ccUploadType (\ s a -> s{_ccUploadType = a})

-- | Multipart request metadata.
ccPayload :: Lens' CallsetsCreate' CallSet
ccPayload
  = lens _ccPayload (\ s a -> s{_ccPayload = a})

-- | OAuth bearer token.
ccBearerToken :: Lens' CallsetsCreate' (Maybe Text)
ccBearerToken
  = lens _ccBearerToken
      (\ s a -> s{_ccBearerToken = a})

-- | JSONP
ccCallback :: Lens' CallsetsCreate' (Maybe Text)
ccCallback
  = lens _ccCallback (\ s a -> s{_ccCallback = a})

instance GoogleRequest CallsetsCreate' where
        type Rs CallsetsCreate' = CallSet
        requestClient CallsetsCreate'{..}
          = go _ccXgafv _ccUploadProtocol (Just _ccPp)
              _ccAccessToken
              _ccUploadType
              _ccBearerToken
              _ccCallback
              (Just AltJSON)
              _ccPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy CallsetsCreateResource)
                      mempty
