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
-- Module      : Network.Google.Resource.Genomics.Callsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a call set by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsCallsetsGet@.
module Network.Google.Resource.Genomics.Callsets.Get
    (
    -- * REST Resource
      CallsetsGetResource

    -- * Creating a Request
    , callsetsGet'
    , CallsetsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIP
    , cgKey
    , cgCallSetId
    , cgOAuthToken
    , cgFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsGet@ which the
-- 'CallsetsGet'' request conforms to.
type CallsetsGetResource =
     "callsets" :>
       Capture "callSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] CallSet

-- | Gets a call set by ID.
--
-- /See:/ 'callsetsGet'' smart constructor.
data CallsetsGet' = CallsetsGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIP      :: !(Maybe Text)
    , _cgKey         :: !(Maybe Key)
    , _cgCallSetId   :: !Text
    , _cgOAuthToken  :: !(Maybe OAuthToken)
    , _cgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIP'
--
-- * 'cgKey'
--
-- * 'cgCallSetId'
--
-- * 'cgOAuthToken'
--
-- * 'cgFields'
callsetsGet'
    :: Text -- ^ 'callSetId'
    -> CallsetsGet'
callsetsGet' pCgCallSetId_ =
    CallsetsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIP = Nothing
    , _cgKey = Nothing
    , _cgCallSetId = pCgCallSetId_
    , _cgOAuthToken = Nothing
    , _cgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CallsetsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CallsetsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIP :: Lens' CallsetsGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CallsetsGet' (Maybe Key)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | The ID of the call set.
cgCallSetId :: Lens' CallsetsGet' Text
cgCallSetId
  = lens _cgCallSetId (\ s a -> s{_cgCallSetId = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CallsetsGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CallsetsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth CallsetsGet' where
        authKey = cgKey . _Just
        authToken = cgOAuthToken . _Just

instance GoogleRequest CallsetsGet' where
        type Rs CallsetsGet' = CallSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsGet'{..}
          = go _cgCallSetId _cgQuotaUser (Just _cgPrettyPrint)
              _cgUserIP
              _cgFields
              _cgKey
              _cgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CallsetsGetResource)
                      r
                      u
