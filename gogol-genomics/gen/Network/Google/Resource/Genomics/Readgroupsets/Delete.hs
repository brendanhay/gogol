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
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsDelete@.
module Network.Google.Resource.Genomics.Readgroupsets.Delete
    (
    -- * REST Resource
      ReadgroupsetsDeleteResource

    -- * Creating a Request
    , readgroupsetsDelete'
    , ReadgroupsetsDelete'

    -- * Request Lenses
    , rdQuotaUser
    , rdPrettyPrint
    , rdReadGroupSetId
    , rdUserIP
    , rdKey
    , rdOAuthToken
    , rdFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsDelete@ which the
-- 'ReadgroupsetsDelete'' request conforms to.
type ReadgroupsetsDeleteResource =
     "readgroupsets" :>
       Capture "readGroupSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a read group set.
--
-- /See:/ 'readgroupsetsDelete'' smart constructor.
data ReadgroupsetsDelete' = ReadgroupsetsDelete'
    { _rdQuotaUser      :: !(Maybe Text)
    , _rdPrettyPrint    :: !Bool
    , _rdReadGroupSetId :: !Text
    , _rdUserIP         :: !(Maybe Text)
    , _rdKey            :: !(Maybe AuthKey)
    , _rdOAuthToken     :: !(Maybe OAuthToken)
    , _rdFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdReadGroupSetId'
--
-- * 'rdUserIP'
--
-- * 'rdKey'
--
-- * 'rdOAuthToken'
--
-- * 'rdFields'
readgroupsetsDelete'
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsDelete'
readgroupsetsDelete' pRdReadGroupSetId_ =
    ReadgroupsetsDelete'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdReadGroupSetId = pRdReadGroupSetId_
    , _rdUserIP = Nothing
    , _rdKey = Nothing
    , _rdOAuthToken = Nothing
    , _rdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdUserIP :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdUserIP = lens _rdUserIP (\ s a -> s{_rdUserIP = a})

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

instance GoogleAuth ReadgroupsetsDelete' where
        authKey = rdKey . _Just
        authToken = rdOAuthToken . _Just

instance GoogleRequest ReadgroupsetsDelete' where
        type Rs ReadgroupsetsDelete' = ()
        request = requestWith genomicsRequest
        requestWith rq ReadgroupsetsDelete'{..}
          = go _rdReadGroupSetId _rdQuotaUser
              (Just _rdPrettyPrint)
              _rdUserIP
              _rdFields
              _rdKey
              _rdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ReadgroupsetsDeleteResource)
                      rq
