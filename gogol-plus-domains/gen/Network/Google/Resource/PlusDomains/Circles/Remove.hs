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
-- Module      : Network.Google.Resource.PlusDomains.Circles.Remove
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesRemove@.
module Network.Google.Resource.PlusDomains.Circles.Remove
    (
    -- * REST Resource
      CirclesRemoveResource

    -- * Creating a Request
    , circlesRemove'
    , CirclesRemove'

    -- * Request Lenses
    , crQuotaUser
    , crPrettyPrint
    , crUserIp
    , crKey
    , crCircleId
    , crOauthToken
    , crFields
    , crAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesRemove@ which the
-- 'CirclesRemove'' request conforms to.
type CirclesRemoveResource =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete a circle.
--
-- /See:/ 'circlesRemove'' smart constructor.
data CirclesRemove' = CirclesRemove'
    { _crQuotaUser   :: !(Maybe Text)
    , _crPrettyPrint :: !Bool
    , _crUserIp      :: !(Maybe Text)
    , _crKey         :: !(Maybe Text)
    , _crCircleId    :: !Text
    , _crOauthToken  :: !(Maybe Text)
    , _crFields      :: !(Maybe Text)
    , _crAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesRemove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crQuotaUser'
--
-- * 'crPrettyPrint'
--
-- * 'crUserIp'
--
-- * 'crKey'
--
-- * 'crCircleId'
--
-- * 'crOauthToken'
--
-- * 'crFields'
--
-- * 'crAlt'
circlesRemove'
    :: Text -- ^ 'circleId'
    -> CirclesRemove'
circlesRemove' pCrCircleId_ =
    CirclesRemove'
    { _crQuotaUser = Nothing
    , _crPrettyPrint = True
    , _crUserIp = Nothing
    , _crKey = Nothing
    , _crCircleId = pCrCircleId_
    , _crOauthToken = Nothing
    , _crFields = Nothing
    , _crAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
crQuotaUser :: Lens' CirclesRemove' (Maybe Text)
crQuotaUser
  = lens _crQuotaUser (\ s a -> s{_crQuotaUser = a})

-- | Returns response with indentations and line breaks.
crPrettyPrint :: Lens' CirclesRemove' Bool
crPrettyPrint
  = lens _crPrettyPrint
      (\ s a -> s{_crPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
crUserIp :: Lens' CirclesRemove' (Maybe Text)
crUserIp = lens _crUserIp (\ s a -> s{_crUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
crKey :: Lens' CirclesRemove' (Maybe Text)
crKey = lens _crKey (\ s a -> s{_crKey = a})

-- | The ID of the circle to delete.
crCircleId :: Lens' CirclesRemove' Text
crCircleId
  = lens _crCircleId (\ s a -> s{_crCircleId = a})

-- | OAuth 2.0 token for the current user.
crOauthToken :: Lens' CirclesRemove' (Maybe Text)
crOauthToken
  = lens _crOauthToken (\ s a -> s{_crOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
crFields :: Lens' CirclesRemove' (Maybe Text)
crFields = lens _crFields (\ s a -> s{_crFields = a})

-- | Data format for the response.
crAlt :: Lens' CirclesRemove' Alt
crAlt = lens _crAlt (\ s a -> s{_crAlt = a})

instance GoogleRequest CirclesRemove' where
        type Rs CirclesRemove' = ()
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesRemove'{..}
          = go _crQuotaUser (Just _crPrettyPrint) _crUserIp
              _crKey
              _crCircleId
              _crOauthToken
              _crFields
              (Just _crAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesRemoveResource)
                      r
                      u
