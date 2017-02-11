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
-- Module      : Network.Google.Resource.Genomics.CallSets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a call set by ID. For the definitions of call sets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.callsets.get@.
module Network.Google.Resource.Genomics.CallSets.Get
    (
    -- * REST Resource
      CallSetsGetResource

    -- * Creating a Request
    , callSetsGet
    , CallSetsGet

    -- * Request Lenses
    , csgXgafv
    , csgUploadProtocol
    , csgPp
    , csgAccessToken
    , csgUploadType
    , csgBearerToken
    , csgCallSetId
    , csgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.callsets.get@ method which the
-- 'CallSetsGet' request conforms to.
type CallSetsGetResource =
     "v1" :>
       "callsets" :>
         Capture "callSetId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] CallSet

-- | Gets a call set by ID. For the definitions of call sets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'callSetsGet' smart constructor.
data CallSetsGet = CallSetsGet'
    { _csgXgafv          :: !(Maybe Xgafv)
    , _csgUploadProtocol :: !(Maybe Text)
    , _csgPp             :: !Bool
    , _csgAccessToken    :: !(Maybe Text)
    , _csgUploadType     :: !(Maybe Text)
    , _csgBearerToken    :: !(Maybe Text)
    , _csgCallSetId      :: !Text
    , _csgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csgXgafv'
--
-- * 'csgUploadProtocol'
--
-- * 'csgPp'
--
-- * 'csgAccessToken'
--
-- * 'csgUploadType'
--
-- * 'csgBearerToken'
--
-- * 'csgCallSetId'
--
-- * 'csgCallback'
callSetsGet
    :: Text -- ^ 'csgCallSetId'
    -> CallSetsGet
callSetsGet pCsgCallSetId_ =
    CallSetsGet'
    { _csgXgafv = Nothing
    , _csgUploadProtocol = Nothing
    , _csgPp = True
    , _csgAccessToken = Nothing
    , _csgUploadType = Nothing
    , _csgBearerToken = Nothing
    , _csgCallSetId = pCsgCallSetId_
    , _csgCallback = Nothing
    }

-- | V1 error format.
csgXgafv :: Lens' CallSetsGet (Maybe Xgafv)
csgXgafv = lens _csgXgafv (\ s a -> s{_csgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csgUploadProtocol :: Lens' CallSetsGet (Maybe Text)
csgUploadProtocol
  = lens _csgUploadProtocol
      (\ s a -> s{_csgUploadProtocol = a})

-- | Pretty-print response.
csgPp :: Lens' CallSetsGet Bool
csgPp = lens _csgPp (\ s a -> s{_csgPp = a})

-- | OAuth access token.
csgAccessToken :: Lens' CallSetsGet (Maybe Text)
csgAccessToken
  = lens _csgAccessToken
      (\ s a -> s{_csgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csgUploadType :: Lens' CallSetsGet (Maybe Text)
csgUploadType
  = lens _csgUploadType
      (\ s a -> s{_csgUploadType = a})

-- | OAuth bearer token.
csgBearerToken :: Lens' CallSetsGet (Maybe Text)
csgBearerToken
  = lens _csgBearerToken
      (\ s a -> s{_csgBearerToken = a})

-- | The ID of the call set.
csgCallSetId :: Lens' CallSetsGet Text
csgCallSetId
  = lens _csgCallSetId (\ s a -> s{_csgCallSetId = a})

-- | JSONP
csgCallback :: Lens' CallSetsGet (Maybe Text)
csgCallback
  = lens _csgCallback (\ s a -> s{_csgCallback = a})

instance GoogleRequest CallSetsGet where
        type Rs CallSetsGet = CallSet
        type Scopes CallSetsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient CallSetsGet'{..}
          = go _csgCallSetId _csgXgafv _csgUploadProtocol
              (Just _csgPp)
              _csgAccessToken
              _csgUploadType
              _csgBearerToken
              _csgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy CallSetsGetResource)
                      mempty
