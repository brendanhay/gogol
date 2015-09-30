{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , rdUserIp
    , rdKey
    , rdOauthToken
    , rdFields
    , rdAlt
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
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a read group set.
--
-- /See:/ 'readgroupsetsDelete'' smart constructor.
data ReadgroupsetsDelete' = ReadgroupsetsDelete'
    { _rdQuotaUser      :: !(Maybe Text)
    , _rdPrettyPrint    :: !Bool
    , _rdReadGroupSetId :: !Text
    , _rdUserIp         :: !(Maybe Text)
    , _rdKey            :: !(Maybe Text)
    , _rdOauthToken     :: !(Maybe Text)
    , _rdFields         :: !(Maybe Text)
    , _rdAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'rdUserIp'
--
-- * 'rdKey'
--
-- * 'rdOauthToken'
--
-- * 'rdFields'
--
-- * 'rdAlt'
readgroupsetsDelete'
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsDelete'
readgroupsetsDelete' pRdReadGroupSetId_ =
    ReadgroupsetsDelete'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdReadGroupSetId = pRdReadGroupSetId_
    , _rdUserIp = Nothing
    , _rdKey = Nothing
    , _rdOauthToken = Nothing
    , _rdFields = Nothing
    , _rdAlt = JSON
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
rdUserIp :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdUserIp = lens _rdUserIp (\ s a -> s{_rdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | OAuth 2.0 token for the current user.
rdOauthToken :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdOauthToken
  = lens _rdOauthToken (\ s a -> s{_rdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' ReadgroupsetsDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

-- | Data format for the response.
rdAlt :: Lens' ReadgroupsetsDelete' Alt
rdAlt = lens _rdAlt (\ s a -> s{_rdAlt = a})

instance GoogleRequest ReadgroupsetsDelete' where
        type Rs ReadgroupsetsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsDelete'{..}
          = go _rdQuotaUser (Just _rdPrettyPrint)
              _rdReadGroupSetId
              _rdUserIp
              _rdKey
              _rdOauthToken
              _rdFields
              (Just _rdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsDeleteResource)
                      r
                      u
