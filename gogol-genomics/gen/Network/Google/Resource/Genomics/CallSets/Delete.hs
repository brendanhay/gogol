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
-- Module      : Network.Google.Resource.Genomics.CallSets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a call set. For the definitions of call sets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.callsets.delete@.
module Network.Google.Resource.Genomics.CallSets.Delete
    (
    -- * REST Resource
      CallSetsDeleteResource

    -- * Creating a Request
    , callSetsDelete
    , CallSetsDelete

    -- * Request Lenses
    , csdXgafv
    , csdUploadProtocol
    , csdPp
    , csdAccessToken
    , csdUploadType
    , csdBearerToken
    , csdCallSetId
    , csdCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.callsets.delete@ method which the
-- 'CallSetsDelete' request conforms to.
type CallSetsDeleteResource =
     "v1" :>
       "callsets" :>
         Capture "callSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a call set. For the definitions of call sets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'callSetsDelete' smart constructor.
data CallSetsDelete = CallSetsDelete
    { _csdXgafv          :: !(Maybe Text)
    , _csdUploadProtocol :: !(Maybe Text)
    , _csdPp             :: !Bool
    , _csdAccessToken    :: !(Maybe Text)
    , _csdUploadType     :: !(Maybe Text)
    , _csdBearerToken    :: !(Maybe Text)
    , _csdCallSetId      :: !Text
    , _csdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdXgafv'
--
-- * 'csdUploadProtocol'
--
-- * 'csdPp'
--
-- * 'csdAccessToken'
--
-- * 'csdUploadType'
--
-- * 'csdBearerToken'
--
-- * 'csdCallSetId'
--
-- * 'csdCallback'
callSetsDelete
    :: Text -- ^ 'csdCallSetId'
    -> CallSetsDelete
callSetsDelete pCsdCallSetId_ =
    CallSetsDelete
    { _csdXgafv = Nothing
    , _csdUploadProtocol = Nothing
    , _csdPp = True
    , _csdAccessToken = Nothing
    , _csdUploadType = Nothing
    , _csdBearerToken = Nothing
    , _csdCallSetId = pCsdCallSetId_
    , _csdCallback = Nothing
    }

-- | V1 error format.
csdXgafv :: Lens' CallSetsDelete (Maybe Text)
csdXgafv = lens _csdXgafv (\ s a -> s{_csdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csdUploadProtocol :: Lens' CallSetsDelete (Maybe Text)
csdUploadProtocol
  = lens _csdUploadProtocol
      (\ s a -> s{_csdUploadProtocol = a})

-- | Pretty-print response.
csdPp :: Lens' CallSetsDelete Bool
csdPp = lens _csdPp (\ s a -> s{_csdPp = a})

-- | OAuth access token.
csdAccessToken :: Lens' CallSetsDelete (Maybe Text)
csdAccessToken
  = lens _csdAccessToken
      (\ s a -> s{_csdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csdUploadType :: Lens' CallSetsDelete (Maybe Text)
csdUploadType
  = lens _csdUploadType
      (\ s a -> s{_csdUploadType = a})

-- | OAuth bearer token.
csdBearerToken :: Lens' CallSetsDelete (Maybe Text)
csdBearerToken
  = lens _csdBearerToken
      (\ s a -> s{_csdBearerToken = a})

-- | The ID of the call set to be deleted.
csdCallSetId :: Lens' CallSetsDelete Text
csdCallSetId
  = lens _csdCallSetId (\ s a -> s{_csdCallSetId = a})

-- | JSONP
csdCallback :: Lens' CallSetsDelete (Maybe Text)
csdCallback
  = lens _csdCallback (\ s a -> s{_csdCallback = a})

instance GoogleRequest CallSetsDelete where
        type Rs CallSetsDelete = Empty
        requestClient CallSetsDelete{..}
          = go _csdCallSetId _csdXgafv _csdUploadProtocol
              (Just _csdPp)
              _csdAccessToken
              _csdUploadType
              _csdBearerToken
              _csdCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy CallSetsDeleteResource)
                      mempty
