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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a read group set by ID.
--
-- /See:/ < Genomics API Reference> for @genomics.readgroupsets.get@.
module Network.Google.Resource.Genomics.Readgroupsets.Get
    (
    -- * REST Resource
      ReadgroupsetsGetResource

    -- * Creating a Request
    , readgroupsetsGet
    , ReadgroupsetsGet

    -- * Request Lenses
    , rXgafv
    , rReadGroupSetId
    , rUploadProtocol
    , rPp
    , rAccessToken
    , rUploadType
    , rBearerToken
    , rCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.get@ method which the
-- 'ReadgroupsetsGet' request conforms to.
type ReadgroupsetsGetResource =
     "v1" :>
       "readgroupsets" :>
         Capture "readGroupSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ReadGroupSet

-- | Gets a read group set by ID.
--
-- /See:/ 'readgroupsetsGet' smart constructor.
data ReadgroupsetsGet = ReadgroupsetsGet
    { _rXgafv          :: !(Maybe Text)
    , _rReadGroupSetId :: !Text
    , _rUploadProtocol :: !(Maybe Text)
    , _rPp             :: !Bool
    , _rAccessToken    :: !(Maybe Text)
    , _rUploadType     :: !(Maybe Text)
    , _rBearerToken    :: !(Maybe Text)
    , _rCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rXgafv'
--
-- * 'rReadGroupSetId'
--
-- * 'rUploadProtocol'
--
-- * 'rPp'
--
-- * 'rAccessToken'
--
-- * 'rUploadType'
--
-- * 'rBearerToken'
--
-- * 'rCallback'
readgroupsetsGet
    :: Text -- ^ 'rReadGroupSetId'
    -> ReadgroupsetsGet
readgroupsetsGet pRReadGroupSetId_ =
    ReadgroupsetsGet
    { _rXgafv = Nothing
    , _rReadGroupSetId = pRReadGroupSetId_
    , _rUploadProtocol = Nothing
    , _rPp = True
    , _rAccessToken = Nothing
    , _rUploadType = Nothing
    , _rBearerToken = Nothing
    , _rCallback = Nothing
    }

-- | V1 error format.
rXgafv :: Lens' ReadgroupsetsGet (Maybe Text)
rXgafv = lens _rXgafv (\ s a -> s{_rXgafv = a})

-- | The ID of the read group set.
rReadGroupSetId :: Lens' ReadgroupsetsGet Text
rReadGroupSetId
  = lens _rReadGroupSetId
      (\ s a -> s{_rReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rUploadProtocol :: Lens' ReadgroupsetsGet (Maybe Text)
rUploadProtocol
  = lens _rUploadProtocol
      (\ s a -> s{_rUploadProtocol = a})

-- | Pretty-print response.
rPp :: Lens' ReadgroupsetsGet Bool
rPp = lens _rPp (\ s a -> s{_rPp = a})

-- | OAuth access token.
rAccessToken :: Lens' ReadgroupsetsGet (Maybe Text)
rAccessToken
  = lens _rAccessToken (\ s a -> s{_rAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rUploadType :: Lens' ReadgroupsetsGet (Maybe Text)
rUploadType
  = lens _rUploadType (\ s a -> s{_rUploadType = a})

-- | OAuth bearer token.
rBearerToken :: Lens' ReadgroupsetsGet (Maybe Text)
rBearerToken
  = lens _rBearerToken (\ s a -> s{_rBearerToken = a})

-- | JSONP
rCallback :: Lens' ReadgroupsetsGet (Maybe Text)
rCallback
  = lens _rCallback (\ s a -> s{_rCallback = a})

instance GoogleRequest ReadgroupsetsGet where
        type Rs ReadgroupsetsGet = ReadGroupSet
        requestClient ReadgroupsetsGet{..}
          = go _rReadGroupSetId _rXgafv _rUploadProtocol
              (Just _rPp)
              _rAccessToken
              _rUploadType
              _rBearerToken
              _rCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadgroupsetsGetResource)
                      mempty
