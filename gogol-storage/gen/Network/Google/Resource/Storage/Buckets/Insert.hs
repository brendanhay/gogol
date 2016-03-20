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
-- Module      : Network.Google.Resource.Storage.Buckets.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.insert@.
module Network.Google.Resource.Storage.Buckets.Insert
    (
    -- * REST Resource
      BucketsInsertResource

    -- * Creating a Request
    , bucketsInsert
    , BucketsInsert

    -- * Request Lenses
    , biProject
    , biPredefinedACL
    , biPayload
    , biPredefinedDefaultObjectACL
    , biProjection
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.insert@ method which the
-- 'BucketsInsert' request conforms to.
type BucketsInsertResource =
     "storage" :>
       "v1" :>
         "b" :>
           QueryParam "project" Text :>
             QueryParam "predefinedAcl" BucketsInsertPredefinedACL
               :>
               QueryParam "predefinedDefaultObjectAcl"
                 BucketsInsertPredefinedDefaultObjectACL
                 :>
                 QueryParam "projection" BucketsInsertProjection :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Bucket :> Post '[JSON] Bucket

-- | Creates a new bucket.
--
-- /See:/ 'bucketsInsert' smart constructor.
data BucketsInsert = BucketsInsert
    { _biProject                    :: !Text
    , _biPredefinedACL              :: !(Maybe BucketsInsertPredefinedACL)
    , _biPayload                    :: !Bucket
    , _biPredefinedDefaultObjectACL :: !(Maybe BucketsInsertPredefinedDefaultObjectACL)
    , _biProjection                 :: !(Maybe BucketsInsertProjection)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biProject'
--
-- * 'biPredefinedACL'
--
-- * 'biPayload'
--
-- * 'biPredefinedDefaultObjectACL'
--
-- * 'biProjection'
bucketsInsert
    :: Text -- ^ 'biProject'
    -> Bucket -- ^ 'biPayload'
    -> BucketsInsert
bucketsInsert pBiProject_ pBiPayload_ =
    BucketsInsert
    { _biProject = pBiProject_
    , _biPredefinedACL = Nothing
    , _biPayload = pBiPayload_
    , _biPredefinedDefaultObjectACL = Nothing
    , _biProjection = Nothing
    }

-- | A valid API project identifier.
biProject :: Lens' BucketsInsert Text
biProject
  = lens _biProject (\ s a -> s{_biProject = a})

-- | Apply a predefined set of access controls to this bucket.
biPredefinedACL :: Lens' BucketsInsert (Maybe BucketsInsertPredefinedACL)
biPredefinedACL
  = lens _biPredefinedACL
      (\ s a -> s{_biPredefinedACL = a})

-- | Multipart request metadata.
biPayload :: Lens' BucketsInsert Bucket
biPayload
  = lens _biPayload (\ s a -> s{_biPayload = a})

-- | Apply a predefined set of default object access controls to this bucket.
biPredefinedDefaultObjectACL :: Lens' BucketsInsert (Maybe BucketsInsertPredefinedDefaultObjectACL)
biPredefinedDefaultObjectACL
  = lens _biPredefinedDefaultObjectACL
      (\ s a -> s{_biPredefinedDefaultObjectACL = a})

-- | Set of properties to return. Defaults to noAcl, unless the bucket
-- resource specifies acl or defaultObjectAcl properties, when it defaults
-- to full.
biProjection :: Lens' BucketsInsert (Maybe BucketsInsertProjection)
biProjection
  = lens _biProjection (\ s a -> s{_biProjection = a})

instance GoogleRequest BucketsInsert where
        type Rs BucketsInsert = Bucket
        requestClient BucketsInsert{..}
          = go (Just _biProject) _biPredefinedACL
              _biPredefinedDefaultObjectACL
              _biProjection
              (Just AltJSON)
              _biPayload
              storageService
          where go
                  = buildClient (Proxy :: Proxy BucketsInsertResource)
                      mempty
