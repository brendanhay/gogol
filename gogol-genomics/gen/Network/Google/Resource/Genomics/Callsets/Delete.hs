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
-- Module      : Network.Google.Resource.Genomics.Callsets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a call set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsCallsetsDelete@.
module Network.Google.Resource.Genomics.Callsets.Delete
    (
    -- * REST Resource
      CallsetsDeleteResource

    -- * Creating a Request
    , callsetsDelete'
    , CallsetsDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIP
    , cdKey
    , cdCallSetId
    , cdOAuthToken
    , cdFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsDelete@ which the
-- 'CallsetsDelete'' request conforms to.
type CallsetsDeleteResource =
     "callsets" :>
       Capture "callSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a call set.
--
-- /See:/ 'callsetsDelete'' smart constructor.
data CallsetsDelete' = CallsetsDelete'
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdPrettyPrint :: !Bool
    , _cdUserIP      :: !(Maybe Text)
    , _cdKey         :: !(Maybe Key)
    , _cdCallSetId   :: !Text
    , _cdOAuthToken  :: !(Maybe OAuthToken)
    , _cdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIP'
--
-- * 'cdKey'
--
-- * 'cdCallSetId'
--
-- * 'cdOAuthToken'
--
-- * 'cdFields'
callsetsDelete'
    :: Text -- ^ 'callSetId'
    -> CallsetsDelete'
callsetsDelete' pCdCallSetId_ =
    CallsetsDelete'
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIP = Nothing
    , _cdKey = Nothing
    , _cdCallSetId = pCdCallSetId_
    , _cdOAuthToken = Nothing
    , _cdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CallsetsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CallsetsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIP :: Lens' CallsetsDelete' (Maybe Text)
cdUserIP = lens _cdUserIP (\ s a -> s{_cdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CallsetsDelete' (Maybe Key)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The ID of the call set to be deleted.
cdCallSetId :: Lens' CallsetsDelete' Text
cdCallSetId
  = lens _cdCallSetId (\ s a -> s{_cdCallSetId = a})

-- | OAuth 2.0 token for the current user.
cdOAuthToken :: Lens' CallsetsDelete' (Maybe OAuthToken)
cdOAuthToken
  = lens _cdOAuthToken (\ s a -> s{_cdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CallsetsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

instance GoogleAuth CallsetsDelete' where
        authKey = cdKey . _Just
        authToken = cdOAuthToken . _Just

instance GoogleRequest CallsetsDelete' where
        type Rs CallsetsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsDelete'{..}
          = go _cdCallSetId _cdQuotaUser (Just _cdPrettyPrint)
              _cdUserIP
              _cdFields
              _cdKey
              _cdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CallsetsDeleteResource)
                      r
                      u
