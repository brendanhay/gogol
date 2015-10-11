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
-- | Deletes a read group set.
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
    , rdQuotaUser
    , rdPrettyPrint
    , rdReadGroupSetId
    , rdUploadProtocol
    , rdPp
    , rdAccessToken
    , rdUploadType
    , rdBearerToken
    , rdKey
    , rdOAuthToken
    , rdFields
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Delete '[JSON] Empty

-- | Deletes a read group set.
--
-- /See:/ 'readgroupsetsDelete'' smart constructor.
data ReadgroupsetsDelete' = ReadgroupsetsDelete'
    { _rdXgafv          :: !(Maybe Text)
    , _rdQuotaUser      :: !(Maybe Text)
    , _rdPrettyPrint    :: !Bool
    , _rdReadGroupSetId :: !Text
    , _rdUploadProtocol :: !(Maybe Text)
    , _rdPp             :: !Bool
    , _rdAccessToken    :: !(Maybe Text)
    , _rdUploadType     :: !(Maybe Text)
    , _rdBearerToken    :: !(Maybe Text)
    , _rdKey            :: !(Maybe AuthKey)
    , _rdOAuthToken     :: !(Maybe OAuthToken)
    , _rdFields         :: !(Maybe Text)
    , _rdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdXgafv'
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
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
-- * 'rdKey'
--
-- * 'rdOAuthToken'
--
-- * 'rdFields'
--
-- * 'rdCallback'
readgroupsetsDelete'
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsDelete'
readgroupsetsDelete' pRdReadGroupSetId_ =
    ReadgroupsetsDelete'
    { _rdXgafv = Nothing
    , _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdReadGroupSetId = pRdReadGroupSetId_
    , _rdUploadProtocol = Nothing
    , _rdPp = True
    , _rdAccessToken = Nothing
    , _rdUploadType = Nothing
    , _rdBearerToken = Nothing
    , _rdKey = Nothing
    , _rdOAuthToken = Nothing
    , _rdFields = Nothing
    , _rdCallback = Nothing
    }

-- | V1 error format.
rdXgafv :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdXgafv = lens _rdXgafv (\ s a -> s{_rdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
rdQuotaUser :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdQuotaUser
  = lens _rdQuotaUser (\ s a -> s{_rdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdPrettyPrint :: Lens' ReadgroupsetsDelete' Bool
rdPrettyPrint
  = lens _rdPrettyPrint
      (\ s a -> s{_rdPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' ReadgroupsetsDelete' (Maybe AuthKey)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | OAuth 2.0 token for the current user.
rdOAuthToken :: Lens' ReadgroupsetsDelete' (Maybe OAuthToken)
rdOAuthToken
  = lens _rdOAuthToken (\ s a -> s{_rdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

-- | JSONP
rdCallback :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdCallback
  = lens _rdCallback (\ s a -> s{_rdCallback = a})

instance GoogleAuth ReadgroupsetsDelete' where
        _AuthKey = rdKey . _Just
        _AuthToken = rdOAuthToken . _Just

instance GoogleRequest ReadgroupsetsDelete' where
        type Rs ReadgroupsetsDelete' = Empty
        request = requestWith genomicsRequest
        requestWith rq ReadgroupsetsDelete'{..}
          = go _rdReadGroupSetId _rdXgafv _rdUploadProtocol
              (Just _rdPp)
              _rdAccessToken
              _rdUploadType
              _rdBearerToken
              _rdCallback
              _rdQuotaUser
              (Just _rdPrettyPrint)
              _rdFields
              _rdKey
              _rdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ReadgroupsetsDeleteResource)
                      rq
