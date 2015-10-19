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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a read group set.
--
-- /See:/ < Genomics API Reference> for @GenomicsReadgroupsetsDelete@.
module Network.Google.Resource.Genomics.Readgroupsets.Delete
    (
    -- * REST Resource
      ReadgroupsetsDeleteResource

    -- * Creating a Request
    , readgroupsetsDelete'
    , ReadgroupsetsDelete'

    -- * Request Lenses
    , rdXgafv
    , rdReadGroupSetId
    , rdUploadProtocol
    , rdPp
    , rdAccessToken
    , rdUploadType
    , rdBearerToken
    , rdCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsDelete@ method which the
-- 'ReadgroupsetsDelete'' request conforms to.
type ReadgroupsetsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a read group set.
--
-- /See:/ 'readgroupsetsDelete'' smart constructor.
data ReadgroupsetsDelete' = ReadgroupsetsDelete'
    { _rdXgafv          :: !(Maybe Text)
    , _rdReadGroupSetId :: !Text
    , _rdUploadProtocol :: !(Maybe Text)
    , _rdPp             :: !Bool
    , _rdAccessToken    :: !(Maybe Text)
    , _rdUploadType     :: !(Maybe Text)
    , _rdBearerToken    :: !(Maybe Text)
    , _rdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdXgafv'
--
-- * 'rdReadGroupSetId'
--
-- * 'rdUploadProtocol'
--
-- * 'rdPp'
--
-- * 'rdAccessToken'
--
-- * 'rdUploadType'
--
-- * 'rdBearerToken'
--
-- * 'rdCallback'
readgroupsetsDelete'
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsDelete'
readgroupsetsDelete' pRdReadGroupSetId_ =
    ReadgroupsetsDelete'
    { _rdXgafv = Nothing
    , _rdReadGroupSetId = pRdReadGroupSetId_
    , _rdUploadProtocol = Nothing
    , _rdPp = True
    , _rdAccessToken = Nothing
    , _rdUploadType = Nothing
    , _rdBearerToken = Nothing
    , _rdCallback = Nothing
    }

-- | V1 error format.
rdXgafv :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdXgafv = lens _rdXgafv (\ s a -> s{_rdXgafv = a})

-- | The ID of the read group set to be deleted. The caller must have WRITE
-- permissions to the dataset associated with this read group set.
rdReadGroupSetId :: Lens' ReadgroupsetsDelete' Text
rdReadGroupSetId
  = lens _rdReadGroupSetId
      (\ s a -> s{_rdReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rdUploadProtocol :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdUploadProtocol
  = lens _rdUploadProtocol
      (\ s a -> s{_rdUploadProtocol = a})

-- | Pretty-print response.
rdPp :: Lens' ReadgroupsetsDelete' Bool
rdPp = lens _rdPp (\ s a -> s{_rdPp = a})

-- | OAuth access token.
rdAccessToken :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdAccessToken
  = lens _rdAccessToken
      (\ s a -> s{_rdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rdUploadType :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdUploadType
  = lens _rdUploadType (\ s a -> s{_rdUploadType = a})

-- | OAuth bearer token.
rdBearerToken :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdBearerToken
  = lens _rdBearerToken
      (\ s a -> s{_rdBearerToken = a})

-- | JSONP
rdCallback :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdCallback
  = lens _rdCallback (\ s a -> s{_rdCallback = a})

instance GoogleRequest ReadgroupsetsDelete' where
        type Rs ReadgroupsetsDelete' = Empty
        requestClient ReadgroupsetsDelete'{..}
          = go _rdReadGroupSetId _rdXgafv _rdUploadProtocol
              (Just _rdPp)
              _rdAccessToken
              _rdUploadType
              _rdBearerToken
              _rdCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadgroupsetsDeleteResource)
                      mempty
