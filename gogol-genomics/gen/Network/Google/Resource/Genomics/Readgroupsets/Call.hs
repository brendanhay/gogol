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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Call
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Calls variants on read data from existing read group sets or files from
-- Google Cloud Storage. See the alignment and variant calling
-- documentation for more details.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsCall@.
module Network.Google.Resource.Genomics.Readgroupsets.Call
    (
    -- * REST Resource
      ReadgroupsetsCallResource

    -- * Creating a Request
    , readgroupsetsCall'
    , ReadgroupsetsCall'

    -- * Request Lenses
    , rcQuotaUser
    , rcPrettyPrint
    , rcUserIp
    , rcKey
    , rcOauthToken
    , rcFields
    , rcAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsCall@ which the
-- 'ReadgroupsetsCall'' request conforms to.
type ReadgroupsetsCallResource =
     "readgroupsets" :>
       "call" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] CallReadGroupSetsResponse

-- | Calls variants on read data from existing read group sets or files from
-- Google Cloud Storage. See the alignment and variant calling
-- documentation for more details.
--
-- /See:/ 'readgroupsetsCall'' smart constructor.
data ReadgroupsetsCall' = ReadgroupsetsCall'
    { _rcQuotaUser   :: !(Maybe Text)
    , _rcPrettyPrint :: !Bool
    , _rcUserIp      :: !(Maybe Text)
    , _rcKey         :: !(Maybe Text)
    , _rcOauthToken  :: !(Maybe Text)
    , _rcFields      :: !(Maybe Text)
    , _rcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsCall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcQuotaUser'
--
-- * 'rcPrettyPrint'
--
-- * 'rcUserIp'
--
-- * 'rcKey'
--
-- * 'rcOauthToken'
--
-- * 'rcFields'
--
-- * 'rcAlt'
readgroupsetsCall'
    :: ReadgroupsetsCall'
readgroupsetsCall' =
    ReadgroupsetsCall'
    { _rcQuotaUser = Nothing
    , _rcPrettyPrint = True
    , _rcUserIp = Nothing
    , _rcKey = Nothing
    , _rcOauthToken = Nothing
    , _rcFields = Nothing
    , _rcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcQuotaUser :: Lens' ReadgroupsetsCall' (Maybe Text)
rcQuotaUser
  = lens _rcQuotaUser (\ s a -> s{_rcQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcPrettyPrint :: Lens' ReadgroupsetsCall' Bool
rcPrettyPrint
  = lens _rcPrettyPrint
      (\ s a -> s{_rcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcUserIp :: Lens' ReadgroupsetsCall' (Maybe Text)
rcUserIp = lens _rcUserIp (\ s a -> s{_rcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcKey :: Lens' ReadgroupsetsCall' (Maybe Text)
rcKey = lens _rcKey (\ s a -> s{_rcKey = a})

-- | OAuth 2.0 token for the current user.
rcOauthToken :: Lens' ReadgroupsetsCall' (Maybe Text)
rcOauthToken
  = lens _rcOauthToken (\ s a -> s{_rcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcFields :: Lens' ReadgroupsetsCall' (Maybe Text)
rcFields = lens _rcFields (\ s a -> s{_rcFields = a})

-- | Data format for the response.
rcAlt :: Lens' ReadgroupsetsCall' Alt
rcAlt = lens _rcAlt (\ s a -> s{_rcAlt = a})

instance GoogleRequest ReadgroupsetsCall' where
        type Rs ReadgroupsetsCall' =
             CallReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsCall'{..}
          = go _rcQuotaUser (Just _rcPrettyPrint) _rcUserIp
              _rcKey
              _rcOauthToken
              _rcFields
              (Just _rcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsCallResource)
                      r
                      u
