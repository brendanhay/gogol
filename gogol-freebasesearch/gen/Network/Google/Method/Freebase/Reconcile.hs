{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Method.Freebase.Reconcile
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Reconcile entities to Freebase open data.
--
-- /See:/ <https://developers.google.com/freebase/ Freebase Search Reference> for @FreebaseReconcile@.
module Freebase.Reconcile
    (
    -- * REST Resource
      ReconcileAPI

    -- * Creating a Request
    , reconcile
    , Reconcile

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rKind
    , rUserIp
    , rLang
    , rConfidence
    , rKey
    , rName
    , rLimit
    , rProp
    , rOauthToken
    , rFields
    , rAlt
    ) where

import           Network.Google.FreebaseSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @FreebaseReconcile@ which the
-- 'Reconcile' request conforms to.
type ReconcileAPI =
     "reconcile" :>
       QueryParams "kind" Text :>
         QueryParams "lang" Text :>
           QueryParam "confidence" Float :>
             QueryParam "name" Text :>
               QueryParam "limit" Int32 :>
                 QueryParams "prop" Text :> Get '[JSON] ReconcileGet

-- | Reconcile entities to Freebase open data.
--
-- /See:/ 'reconcile' smart constructor.
data Reconcile = Reconcile
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rKind        :: !(Maybe Text)
    , _rUserIp      :: !(Maybe Text)
    , _rLang        :: !(Maybe Text)
    , _rConfidence  :: !Float
    , _rKey         :: !(Maybe Text)
    , _rName        :: !(Maybe Text)
    , _rLimit       :: !Int32
    , _rProp        :: !(Maybe Text)
    , _rOauthToken  :: !(Maybe Text)
    , _rFields      :: !(Maybe Text)
    , _rAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Reconcile'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rKind'
--
-- * 'rUserIp'
--
-- * 'rLang'
--
-- * 'rConfidence'
--
-- * 'rKey'
--
-- * 'rName'
--
-- * 'rLimit'
--
-- * 'rProp'
--
-- * 'rOauthToken'
--
-- * 'rFields'
--
-- * 'rAlt'
reconcile
    :: Reconcile
reconcile =
    Reconcile
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rKind = Nothing
    , _rUserIp = Nothing
    , _rLang = Nothing
    , _rConfidence = 0.99
    , _rKey = Nothing
    , _rName = Nothing
    , _rLimit = 3
    , _rProp = Nothing
    , _rOauthToken = Nothing
    , _rFields = Nothing
    , _rAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' Reconcile' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' Reconcile' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | Classifications of entity e.g. type, category, title.
rKind :: Lens' Reconcile' (Maybe Text)
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' Reconcile' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | Languages for names and values. First language is used for display.
-- Default is \'en\'.
rLang :: Lens' Reconcile' (Maybe Text)
rLang = lens _rLang (\ s a -> s{_rLang = a})

-- | Required confidence for a candidate to match. Must be between .5 and 1.0
rConfidence :: Lens' Reconcile' Float
rConfidence
  = lens _rConfidence (\ s a -> s{_rConfidence = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' Reconcile' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | Name of entity.
rName :: Lens' Reconcile' (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | Maximum number of candidates to return.
rLimit :: Lens' Reconcile' Int32
rLimit = lens _rLimit (\ s a -> s{_rLimit = a})

-- | Property values for entity formatted as :
rProp :: Lens' Reconcile' (Maybe Text)
rProp = lens _rProp (\ s a -> s{_rProp = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' Reconcile' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' Reconcile' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' Reconcile' Text
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest Reconcile' where
        type Rs Reconcile' = ReconcileGet
        request = requestWithRoute defReq freebaseSearchURL
        requestWithRoute r u Reconcile{..}
          = go _rQuotaUser _rPrettyPrint _rKind _rUserIp _rLang
              (Just _rConfidence)
              _rKey
              _rName
              (Just _rLimit)
              _rProp
              _rOauthToken
              _rFields
              _rAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ReconcileAPI) r u
