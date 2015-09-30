{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Annotations.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsCreate@.
module Genomics.Annotations.Create
    (
    -- * REST Resource
      AnnotationsCreateAPI

    -- * Creating a Request
    , annotationsCreate
    , AnnotationsCreate

    -- * Request Lenses
    , acQuotaUser
    , acPrettyPrint
    , acUserIp
    , acKey
    , acOauthToken
    , acFields
    , acAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsCreate@ which the
-- 'AnnotationsCreate' request conforms to.
type AnnotationsCreateAPI =
     "annotations" :> Post '[JSON] Annotation

-- | Creates a new annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ 'annotationsCreate' smart constructor.
data AnnotationsCreate = AnnotationsCreate
    { _acQuotaUser   :: !(Maybe Text)
    , _acPrettyPrint :: !Bool
    , _acUserIp      :: !(Maybe Text)
    , _acKey         :: !(Maybe Text)
    , _acOauthToken  :: !(Maybe Text)
    , _acFields      :: !(Maybe Text)
    , _acAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acQuotaUser'
--
-- * 'acPrettyPrint'
--
-- * 'acUserIp'
--
-- * 'acKey'
--
-- * 'acOauthToken'
--
-- * 'acFields'
--
-- * 'acAlt'
annotationsCreate
    :: AnnotationsCreate
annotationsCreate =
    AnnotationsCreate
    { _acQuotaUser = Nothing
    , _acPrettyPrint = True
    , _acUserIp = Nothing
    , _acKey = Nothing
    , _acOauthToken = Nothing
    , _acFields = Nothing
    , _acAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acQuotaUser :: Lens' AnnotationsCreate' (Maybe Text)
acQuotaUser
  = lens _acQuotaUser (\ s a -> s{_acQuotaUser = a})

-- | Returns response with indentations and line breaks.
acPrettyPrint :: Lens' AnnotationsCreate' Bool
acPrettyPrint
  = lens _acPrettyPrint
      (\ s a -> s{_acPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acUserIp :: Lens' AnnotationsCreate' (Maybe Text)
acUserIp = lens _acUserIp (\ s a -> s{_acUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acKey :: Lens' AnnotationsCreate' (Maybe Text)
acKey = lens _acKey (\ s a -> s{_acKey = a})

-- | OAuth 2.0 token for the current user.
acOauthToken :: Lens' AnnotationsCreate' (Maybe Text)
acOauthToken
  = lens _acOauthToken (\ s a -> s{_acOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acFields :: Lens' AnnotationsCreate' (Maybe Text)
acFields = lens _acFields (\ s a -> s{_acFields = a})

-- | Data format for the response.
acAlt :: Lens' AnnotationsCreate' Text
acAlt = lens _acAlt (\ s a -> s{_acAlt = a})

instance GoogleRequest AnnotationsCreate' where
        type Rs AnnotationsCreate' = Annotation
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsCreate{..}
          = go _acQuotaUser _acPrettyPrint _acUserIp _acKey
              _acOauthToken
              _acFields
              _acAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsCreateAPI)
                      r
                      u
