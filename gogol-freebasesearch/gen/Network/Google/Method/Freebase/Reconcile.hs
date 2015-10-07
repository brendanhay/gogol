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
module Network.Google.Method.Freebase.Reconcile
    (
    -- * REST Resource
      ReconcileMethod

    -- * Creating a Request
    , reconcile'
    , Reconcile'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rKind
    , rUserIP
    , rLang
    , rConfidence
    , rKey
    , rName
    , rLimit
    , rProp
    , rOAuthToken
    , rFields
    ) where

import           Network.Google.FreebaseSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @FreebaseReconcile@ method which the
-- 'Reconcile'' request conforms to.
type ReconcileMethod =
     "reconcile" :>
       QueryParams "kind" Text :>
         QueryParams "lang" Text :>
           QueryParam "confidence" Float :>
             QueryParam "name" Text :>
               QueryParam "limit" Int32 :>
                 QueryParams "prop" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ReconcileGet

-- | Reconcile entities to Freebase open data.
--
-- /See:/ 'reconcile'' smart constructor.
data Reconcile' = Reconcile'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rKind        :: !(Maybe [Text])
    , _rUserIP      :: !(Maybe Text)
    , _rLang        :: !(Maybe [Text])
    , _rConfidence  :: !Float
    , _rKey         :: !(Maybe AuthKey)
    , _rName        :: !(Maybe Text)
    , _rLimit       :: !Int32
    , _rProp        :: !(Maybe [Text])
    , _rOAuthToken  :: !(Maybe OAuthToken)
    , _rFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rUserIP'
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
-- * 'rOAuthToken'
--
-- * 'rFields'
reconcile'
    :: Reconcile'
reconcile' =
    Reconcile'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rKind = Nothing
    , _rUserIP = Nothing
    , _rLang = Nothing
    , _rConfidence = 0.99
    , _rKey = Nothing
    , _rName = Nothing
    , _rLimit = 3
    , _rProp = Nothing
    , _rOAuthToken = Nothing
    , _rFields = Nothing
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
rKind :: Lens' Reconcile' [Text]
rKind
  = lens _rKind (\ s a -> s{_rKind = a}) . _Default .
      _Coerce

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIP :: Lens' Reconcile' (Maybe Text)
rUserIP = lens _rUserIP (\ s a -> s{_rUserIP = a})

-- | Languages for names and values. First language is used for display.
-- Default is \'en\'.
rLang :: Lens' Reconcile' [Text]
rLang
  = lens _rLang (\ s a -> s{_rLang = a}) . _Default .
      _Coerce

-- | Required confidence for a candidate to match. Must be between .5 and 1.0
rConfidence :: Lens' Reconcile' Float
rConfidence
  = lens _rConfidence (\ s a -> s{_rConfidence = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' Reconcile' (Maybe AuthKey)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | Name of entity.
rName :: Lens' Reconcile' (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | Maximum number of candidates to return.
rLimit :: Lens' Reconcile' Int32
rLimit = lens _rLimit (\ s a -> s{_rLimit = a})

-- | Property values for entity formatted as :
rProp :: Lens' Reconcile' [Text]
rProp
  = lens _rProp (\ s a -> s{_rProp = a}) . _Default .
      _Coerce

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' Reconcile' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' Reconcile' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

instance GoogleAuth Reconcile' where
        _AuthKey = rKey . _Just
        _AuthToken = rOAuthToken . _Just

instance GoogleRequest Reconcile' where
        type Rs Reconcile' = ReconcileGet
        request = requestWith freebaseSearchRequest
        requestWith rq Reconcile'{..}
          = go (_rKind ^. _Default) (_rLang ^. _Default)
              (Just _rConfidence)
              _rName
              (Just _rLimit)
              (_rProp ^. _Default)
              _rQuotaUser
              (Just _rPrettyPrint)
              _rUserIP
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ReconcileMethod) rq
