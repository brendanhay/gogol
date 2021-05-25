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
-- Module      : Network.Google.Resource.Storage.Buckets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a bucket. Changes to the bucket will be readable immediately
-- after writing, but configuration changes may take time to propagate.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.patch@.
module Network.Google.Resource.Storage.Buckets.Patch
    (
    -- * REST Resource
      BucketsPatchResource

    -- * Creating a Request
    , bucketsPatch
    , BucketsPatch

    -- * Request Lenses
    , bpIfMetagenerationMatch
    , bpPredefinedACL
    , bpBucket
    , bpPayload
    , bpPredefinedDefaultObjectACL
    , bpUserProject
    , bpIfMetagenerationNotMatch
    , bpProjection
    , bpProvisionalUserProject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.patch@ method which the
-- 'BucketsPatch' request conforms to.
type BucketsPatchResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             QueryParam "ifMetagenerationMatch" (Textual Int64) :>
               QueryParam "predefinedAcl" BucketsPatchPredefinedACL
                 :>
                 QueryParam "predefinedDefaultObjectAcl"
                   BucketsPatchPredefinedDefaultObjectACL
                   :>
                   QueryParam "userProject" Text :>
                     QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                       :>
                       QueryParam "projection" BucketsPatchProjection :>
                         QueryParam "provisionalUserProject" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Bucket :> Patch '[JSON] Bucket

-- | Patches a bucket. Changes to the bucket will be readable immediately
-- after writing, but configuration changes may take time to propagate.
--
-- /See:/ 'bucketsPatch' smart constructor.
data BucketsPatch =
  BucketsPatch'
    { _bpIfMetagenerationMatch :: !(Maybe (Textual Int64))
    , _bpPredefinedACL :: !(Maybe BucketsPatchPredefinedACL)
    , _bpBucket :: !Text
    , _bpPayload :: !Bucket
    , _bpPredefinedDefaultObjectACL :: !(Maybe BucketsPatchPredefinedDefaultObjectACL)
    , _bpUserProject :: !(Maybe Text)
    , _bpIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _bpProjection :: !(Maybe BucketsPatchProjection)
    , _bpProvisionalUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpIfMetagenerationMatch'
--
-- * 'bpPredefinedACL'
--
-- * 'bpBucket'
--
-- * 'bpPayload'
--
-- * 'bpPredefinedDefaultObjectACL'
--
-- * 'bpUserProject'
--
-- * 'bpIfMetagenerationNotMatch'
--
-- * 'bpProjection'
--
-- * 'bpProvisionalUserProject'
bucketsPatch
    :: Text -- ^ 'bpBucket'
    -> Bucket -- ^ 'bpPayload'
    -> BucketsPatch
bucketsPatch pBpBucket_ pBpPayload_ =
  BucketsPatch'
    { _bpIfMetagenerationMatch = Nothing
    , _bpPredefinedACL = Nothing
    , _bpBucket = pBpBucket_
    , _bpPayload = pBpPayload_
    , _bpPredefinedDefaultObjectACL = Nothing
    , _bpUserProject = Nothing
    , _bpIfMetagenerationNotMatch = Nothing
    , _bpProjection = Nothing
    , _bpProvisionalUserProject = Nothing
    }


-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration matches the given value.
bpIfMetagenerationMatch :: Lens' BucketsPatch (Maybe Int64)
bpIfMetagenerationMatch
  = lens _bpIfMetagenerationMatch
      (\ s a -> s{_bpIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Apply a predefined set of access controls to this bucket.
bpPredefinedACL :: Lens' BucketsPatch (Maybe BucketsPatchPredefinedACL)
bpPredefinedACL
  = lens _bpPredefinedACL
      (\ s a -> s{_bpPredefinedACL = a})

-- | Name of a bucket.
bpBucket :: Lens' BucketsPatch Text
bpBucket = lens _bpBucket (\ s a -> s{_bpBucket = a})

-- | Multipart request metadata.
bpPayload :: Lens' BucketsPatch Bucket
bpPayload
  = lens _bpPayload (\ s a -> s{_bpPayload = a})

-- | Apply a predefined set of default object access controls to this bucket.
bpPredefinedDefaultObjectACL :: Lens' BucketsPatch (Maybe BucketsPatchPredefinedDefaultObjectACL)
bpPredefinedDefaultObjectACL
  = lens _bpPredefinedDefaultObjectACL
      (\ s a -> s{_bpPredefinedDefaultObjectACL = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
bpUserProject :: Lens' BucketsPatch (Maybe Text)
bpUserProject
  = lens _bpUserProject
      (\ s a -> s{_bpUserProject = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
bpIfMetagenerationNotMatch :: Lens' BucketsPatch (Maybe Int64)
bpIfMetagenerationNotMatch
  = lens _bpIfMetagenerationNotMatch
      (\ s a -> s{_bpIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Set of properties to return. Defaults to full.
bpProjection :: Lens' BucketsPatch (Maybe BucketsPatchProjection)
bpProjection
  = lens _bpProjection (\ s a -> s{_bpProjection = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
bpProvisionalUserProject :: Lens' BucketsPatch (Maybe Text)
bpProvisionalUserProject
  = lens _bpProvisionalUserProject
      (\ s a -> s{_bpProvisionalUserProject = a})

instance GoogleRequest BucketsPatch where
        type Rs BucketsPatch = Bucket
        type Scopes BucketsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient BucketsPatch'{..}
          = go _bpBucket _bpIfMetagenerationMatch
              _bpPredefinedACL
              _bpPredefinedDefaultObjectACL
              _bpUserProject
              _bpIfMetagenerationNotMatch
              _bpProjection
              _bpProvisionalUserProject
              (Just AltJSON)
              _bpPayload
              storageService
          where go
                  = buildClient (Proxy :: Proxy BucketsPatchResource)
                      mempty
