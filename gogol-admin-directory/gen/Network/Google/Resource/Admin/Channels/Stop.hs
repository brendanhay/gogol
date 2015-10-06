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
-- Module      : Network.Google.Resource.Admin.Channels.Stop
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Stop watching resources through this channel
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @AdminChannelsStop@.
module Network.Google.Resource.Admin.Channels.Stop
    (
    -- * REST Resource
      ChannelsStopResource

    -- * Creating a Request
    , channelsStop'
    , ChannelsStop'

    -- * Request Lenses
    , csQuotaUser
    , csPrettyPrint
    , csUserIP
    , csPayload
    , csKey
    , csOAuthToken
    , csFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @AdminChannelsStop@ which the
-- 'ChannelsStop'' request conforms to.
type ChannelsStopResource =
     "admin" :>
       "directory_v1" :>
         "channels" :>
           "stop" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Channel :> Post '[JSON] ()

-- | Stop watching resources through this channel
--
-- /See:/ 'channelsStop'' smart constructor.
data ChannelsStop' = ChannelsStop'
    { _csQuotaUser   :: !(Maybe Text)
    , _csPrettyPrint :: !Bool
    , _csUserIP      :: !(Maybe Text)
    , _csPayload     :: !Channel
    , _csKey         :: !(Maybe AuthKey)
    , _csOAuthToken  :: !(Maybe OAuthToken)
    , _csFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelsStop'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csQuotaUser'
--
-- * 'csPrettyPrint'
--
-- * 'csUserIP'
--
-- * 'csPayload'
--
-- * 'csKey'
--
-- * 'csOAuthToken'
--
-- * 'csFields'
channelsStop'
    :: Channel -- ^ 'payload'
    -> ChannelsStop'
channelsStop' pCsPayload_ =
    ChannelsStop'
    { _csQuotaUser = Nothing
    , _csPrettyPrint = True
    , _csUserIP = Nothing
    , _csPayload = pCsPayload_
    , _csKey = Nothing
    , _csOAuthToken = Nothing
    , _csFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
csQuotaUser :: Lens' ChannelsStop' (Maybe Text)
csQuotaUser
  = lens _csQuotaUser (\ s a -> s{_csQuotaUser = a})

-- | Returns response with indentations and line breaks.
csPrettyPrint :: Lens' ChannelsStop' Bool
csPrettyPrint
  = lens _csPrettyPrint
      (\ s a -> s{_csPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
csUserIP :: Lens' ChannelsStop' (Maybe Text)
csUserIP = lens _csUserIP (\ s a -> s{_csUserIP = a})

-- | Multipart request metadata.
csPayload :: Lens' ChannelsStop' Channel
csPayload
  = lens _csPayload (\ s a -> s{_csPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csKey :: Lens' ChannelsStop' (Maybe AuthKey)
csKey = lens _csKey (\ s a -> s{_csKey = a})

-- | OAuth 2.0 token for the current user.
csOAuthToken :: Lens' ChannelsStop' (Maybe OAuthToken)
csOAuthToken
  = lens _csOAuthToken (\ s a -> s{_csOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
csFields :: Lens' ChannelsStop' (Maybe Text)
csFields = lens _csFields (\ s a -> s{_csFields = a})

instance GoogleAuth ChannelsStop' where
        _AuthKey = csKey . _Just
        _AuthToken = csOAuthToken . _Just

instance GoogleRequest ChannelsStop' where
        type Rs ChannelsStop' = ()
        request = requestWith directoryRequest
        requestWith rq ChannelsStop'{..}
          = go _csQuotaUser (Just _csPrettyPrint) _csUserIP
              _csFields
              _csKey
              _csOAuthToken
              (Just AltJSON)
              _csPayload
          where go
                  = clientBuild (Proxy :: Proxy ChannelsStopResource)
                      rq
