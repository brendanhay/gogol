{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Callsets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a call set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.callsets.delete@.
module Network.Google.API.Genomics.Callsets.Delete
    (
    -- * REST Resource
      CallsetsDeleteAPI

    -- * Creating a Request
    , callsetsDelete'
    , CallsetsDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIp
    , cdKey
    , cdCallSetId
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.callsets.delete which the
-- 'CallsetsDelete'' request conforms to.
type CallsetsDeleteAPI =
     "callsets" :>
       Capture "callSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a call set.
--
-- /See:/ 'callsetsDelete'' smart constructor.
data CallsetsDelete' = CallsetsDelete'
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdPrettyPrint :: !Bool
    , _cdUserIp      :: !(Maybe Text)
    , _cdKey         :: !(Maybe Text)
    , _cdCallSetId   :: !Text
    , _cdOauthToken  :: !(Maybe Text)
    , _cdFields      :: !(Maybe Text)
    , _cdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIp'
--
-- * 'cdKey'
--
-- * 'cdCallSetId'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
callsetsDelete'
    :: Text -- ^ 'callSetId'
    -> CallsetsDelete'
callsetsDelete' pCdCallSetId_ =
    CallsetsDelete'
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIp = Nothing
    , _cdKey = Nothing
    , _cdCallSetId = pCdCallSetId_
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = JSON
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
cdUserIp :: Lens' CallsetsDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CallsetsDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The ID of the call set to be deleted.
cdCallSetId :: Lens' CallsetsDelete' Text
cdCallSetId
  = lens _cdCallSetId (\ s a -> s{_cdCallSetId = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' CallsetsDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CallsetsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' CallsetsDelete' Alt
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest CallsetsDelete' where
        type Rs CallsetsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsDelete'{..}
          = go _cdQuotaUser (Just _cdPrettyPrint) _cdUserIp
              _cdKey
              _cdCallSetId
              _cdOauthToken
              _cdFields
              (Just _cdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CallsetsDeleteAPI)
                      r
                      u
