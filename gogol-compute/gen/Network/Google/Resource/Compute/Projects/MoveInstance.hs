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
-- Module      : Network.Google.Resource.Compute.Projects.MoveInstance
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves an instance and its attached persistent disks from one zone to
-- another.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeProjectsMoveInstance@.
module Network.Google.Resource.Compute.Projects.MoveInstance
    (
    -- * REST Resource
      ProjectsMoveInstanceResource

    -- * Creating a Request
    , projectsMoveInstance'
    , ProjectsMoveInstance'

    -- * Request Lenses
    , pmiQuotaUser
    , pmiPrettyPrint
    , pmiProject
    , pmiUserIp
    , pmiKey
    , pmiOauthToken
    , pmiFields
    , pmiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsMoveInstance@ which the
-- 'ProjectsMoveInstance'' request conforms to.
type ProjectsMoveInstanceResource =
     Capture "project" Text :>
       "moveInstance" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Moves an instance and its attached persistent disks from one zone to
-- another.
--
-- /See:/ 'projectsMoveInstance'' smart constructor.
data ProjectsMoveInstance' = ProjectsMoveInstance'
    { _pmiQuotaUser   :: !(Maybe Text)
    , _pmiPrettyPrint :: !Bool
    , _pmiProject     :: !Text
    , _pmiUserIp      :: !(Maybe Text)
    , _pmiKey         :: !(Maybe Text)
    , _pmiOauthToken  :: !(Maybe Text)
    , _pmiFields      :: !(Maybe Text)
    , _pmiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMoveInstance'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmiQuotaUser'
--
-- * 'pmiPrettyPrint'
--
-- * 'pmiProject'
--
-- * 'pmiUserIp'
--
-- * 'pmiKey'
--
-- * 'pmiOauthToken'
--
-- * 'pmiFields'
--
-- * 'pmiAlt'
projectsMoveInstance'
    :: Text -- ^ 'project'
    -> ProjectsMoveInstance'
projectsMoveInstance' pPmiProject_ =
    ProjectsMoveInstance'
    { _pmiQuotaUser = Nothing
    , _pmiPrettyPrint = True
    , _pmiProject = pPmiProject_
    , _pmiUserIp = Nothing
    , _pmiKey = Nothing
    , _pmiOauthToken = Nothing
    , _pmiFields = Nothing
    , _pmiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pmiQuotaUser :: Lens' ProjectsMoveInstance' (Maybe Text)
pmiQuotaUser
  = lens _pmiQuotaUser (\ s a -> s{_pmiQuotaUser = a})

-- | Returns response with indentations and line breaks.
pmiPrettyPrint :: Lens' ProjectsMoveInstance' Bool
pmiPrettyPrint
  = lens _pmiPrettyPrint
      (\ s a -> s{_pmiPrettyPrint = a})

-- | Project ID for this request.
pmiProject :: Lens' ProjectsMoveInstance' Text
pmiProject
  = lens _pmiProject (\ s a -> s{_pmiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pmiUserIp :: Lens' ProjectsMoveInstance' (Maybe Text)
pmiUserIp
  = lens _pmiUserIp (\ s a -> s{_pmiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pmiKey :: Lens' ProjectsMoveInstance' (Maybe Text)
pmiKey = lens _pmiKey (\ s a -> s{_pmiKey = a})

-- | OAuth 2.0 token for the current user.
pmiOauthToken :: Lens' ProjectsMoveInstance' (Maybe Text)
pmiOauthToken
  = lens _pmiOauthToken
      (\ s a -> s{_pmiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pmiFields :: Lens' ProjectsMoveInstance' (Maybe Text)
pmiFields
  = lens _pmiFields (\ s a -> s{_pmiFields = a})

-- | Data format for the response.
pmiAlt :: Lens' ProjectsMoveInstance' Alt
pmiAlt = lens _pmiAlt (\ s a -> s{_pmiAlt = a})

instance GoogleRequest ProjectsMoveInstance' where
        type Rs ProjectsMoveInstance' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ProjectsMoveInstance'{..}
          = go _pmiQuotaUser (Just _pmiPrettyPrint) _pmiProject
              _pmiUserIp
              _pmiKey
              _pmiOauthToken
              _pmiFields
              (Just _pmiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsMoveInstanceResource)
                      r
                      u
