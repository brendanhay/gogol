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
    , rcUserIP
    , rcPayload
    , rcKey
    , rcOAuthToken
    , rcFields
    ) where

import Network.Google.Genomics.Types
import Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsCall@ which the
-- 'ReadgroupsetsCall'' request conforms to.
type ReadgroupsetsCallResource =
     "readgroupsets" :>
       "call" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CallReadGroupSetsRequest :>
                         Post '[JSON] CallReadGroupSetsResponse

-- | Calls variants on read data from existing read group sets or files from
-- Google Cloud Storage. See the alignment and variant calling
-- documentation for more details.
--
-- /See:/ 'readgroupsetsCall'' smart constructor.
data ReadgroupsetsCall' = ReadgroupsetsCall'
    { _rcQuotaUser :: !(Maybe Text)
    , _rcPrettyPrint :: !Bool
    , _rcUserIP :: !(Maybe Text)
    , _rcPayload :: !CallReadGroupSetsRequest
    , _rcKey :: !(Maybe Key)
    , _rcOAuthToken :: !(Maybe OAuthToken)
    , _rcFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsCall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcQuotaUser'
--
-- * 'rcPrettyPrint'
--
-- * 'rcUserIP'
--
-- * 'rcPayload'
--
-- * 'rcKey'
--
-- * 'rcOAuthToken'
--
-- * 'rcFields'
readgroupsetsCall'
    :: CallReadGroupSetsRequest -- ^ 'payload'
    -> ReadgroupsetsCall'
readgroupsetsCall' pRcPayload_ = 
    ReadgroupsetsCall'
    { _rcQuotaUser = Nothing
    , _rcPrettyPrint = True
    , _rcUserIP = Nothing
    , _rcPayload = pRcPayload_
    , _rcKey = Nothing
    , _rcOAuthToken = Nothing
    , _rcFields = Nothing
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
rcUserIP :: Lens' ReadgroupsetsCall' (Maybe Text)
rcUserIP = lens _rcUserIP (\ s a -> s{_rcUserIP = a})

-- | Multipart request metadata.
rcPayload :: Lens' ReadgroupsetsCall' CallReadGroupSetsRequest
rcPayload
  = lens _rcPayload (\ s a -> s{_rcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcKey :: Lens' ReadgroupsetsCall' (Maybe Key)
rcKey = lens _rcKey (\ s a -> s{_rcKey = a})

-- | OAuth 2.0 token for the current user.
rcOAuthToken :: Lens' ReadgroupsetsCall' (Maybe OAuthToken)
rcOAuthToken
  = lens _rcOAuthToken (\ s a -> s{_rcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcFields :: Lens' ReadgroupsetsCall' (Maybe Text)
rcFields = lens _rcFields (\ s a -> s{_rcFields = a})

instance GoogleAuth ReadgroupsetsCall' where
        authKey = rcKey . _Just
        authToken = rcOAuthToken . _Just

instance GoogleRequest ReadgroupsetsCall' where
        type Rs ReadgroupsetsCall' =
             CallReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsCall'{..}
          = go _rcQuotaUser (Just _rcPrettyPrint) _rcUserIP
              _rcFields
              _rcKey
              _rcOAuthToken
              (Just AltJSON)
              _rcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsCallResource)
                      r
                      u
