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
    , pmiUserIP
    , pmiPayload
    , pmiKey
    , pmiOAuthToken
    , pmiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsMoveInstance@ method which the
-- 'ProjectsMoveInstance'' request conforms to.
type ProjectsMoveInstanceResource =
     Capture "project" Text :>
       "moveInstance" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] InstanceMoveRequest :>
                         Post '[JSON] Operation

-- | Moves an instance and its attached persistent disks from one zone to
-- another.
--
-- /See:/ 'projectsMoveInstance'' smart constructor.
data ProjectsMoveInstance' = ProjectsMoveInstance'
    { _pmiQuotaUser   :: !(Maybe Text)
    , _pmiPrettyPrint :: !Bool
    , _pmiProject     :: !Text
    , _pmiUserIP      :: !(Maybe Text)
    , _pmiPayload     :: !InstanceMoveRequest
    , _pmiKey         :: !(Maybe AuthKey)
    , _pmiOAuthToken  :: !(Maybe OAuthToken)
    , _pmiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pmiUserIP'
--
-- * 'pmiPayload'
--
-- * 'pmiKey'
--
-- * 'pmiOAuthToken'
--
-- * 'pmiFields'
projectsMoveInstance'
    :: Text -- ^ 'project'
    -> InstanceMoveRequest -- ^ 'payload'
    -> ProjectsMoveInstance'
projectsMoveInstance' pPmiProject_ pPmiPayload_ =
    ProjectsMoveInstance'
    { _pmiQuotaUser = Nothing
    , _pmiPrettyPrint = True
    , _pmiProject = pPmiProject_
    , _pmiUserIP = Nothing
    , _pmiPayload = pPmiPayload_
    , _pmiKey = Nothing
    , _pmiOAuthToken = Nothing
    , _pmiFields = Nothing
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
pmiUserIP :: Lens' ProjectsMoveInstance' (Maybe Text)
pmiUserIP
  = lens _pmiUserIP (\ s a -> s{_pmiUserIP = a})

-- | Multipart request metadata.
pmiPayload :: Lens' ProjectsMoveInstance' InstanceMoveRequest
pmiPayload
  = lens _pmiPayload (\ s a -> s{_pmiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pmiKey :: Lens' ProjectsMoveInstance' (Maybe AuthKey)
pmiKey = lens _pmiKey (\ s a -> s{_pmiKey = a})

-- | OAuth 2.0 token for the current user.
pmiOAuthToken :: Lens' ProjectsMoveInstance' (Maybe OAuthToken)
pmiOAuthToken
  = lens _pmiOAuthToken
      (\ s a -> s{_pmiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pmiFields :: Lens' ProjectsMoveInstance' (Maybe Text)
pmiFields
  = lens _pmiFields (\ s a -> s{_pmiFields = a})

instance GoogleAuth ProjectsMoveInstance' where
        _AuthKey = pmiKey . _Just
        _AuthToken = pmiOAuthToken . _Just

instance GoogleRequest ProjectsMoveInstance' where
        type Rs ProjectsMoveInstance' = Operation
        request = requestWith computeRequest
        requestWith rq ProjectsMoveInstance'{..}
          = go _pmiProject _pmiQuotaUser (Just _pmiPrettyPrint)
              _pmiUserIP
              _pmiFields
              _pmiKey
              _pmiOAuthToken
              (Just AltJSON)
              _pmiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsMoveInstanceResource)
                      rq
