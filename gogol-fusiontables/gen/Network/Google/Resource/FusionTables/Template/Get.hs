{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Template.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific template by its id
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateGet@.
module Network.Google.Resource.FusionTables.Template.Get
    (
    -- * REST Resource
      TemplateGetResource

    -- * Creating a Request
    , templateGet'
    , TemplateGet'

    -- * Request Lenses
    , tggQuotaUser
    , tggPrettyPrint
    , tggTemplateId
    , tggUserIP
    , tggKey
    , tggOAuthToken
    , tggTableId
    , tggFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateGet@ which the
-- 'TemplateGet'' request conforms to.
type TemplateGetResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Template

-- | Retrieves a specific template by its id
--
-- /See:/ 'templateGet'' smart constructor.
data TemplateGet' = TemplateGet'
    { _tggQuotaUser   :: !(Maybe Text)
    , _tggPrettyPrint :: !Bool
    , _tggTemplateId  :: !Int32
    , _tggUserIP      :: !(Maybe Text)
    , _tggKey         :: !(Maybe Key)
    , _tggOAuthToken  :: !(Maybe OAuthToken)
    , _tggTableId     :: !Text
    , _tggFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tggQuotaUser'
--
-- * 'tggPrettyPrint'
--
-- * 'tggTemplateId'
--
-- * 'tggUserIP'
--
-- * 'tggKey'
--
-- * 'tggOAuthToken'
--
-- * 'tggTableId'
--
-- * 'tggFields'
templateGet'
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplateGet'
templateGet' pTggTemplateId_ pTggTableId_ =
    TemplateGet'
    { _tggQuotaUser = Nothing
    , _tggPrettyPrint = True
    , _tggTemplateId = pTggTemplateId_
    , _tggUserIP = Nothing
    , _tggKey = Nothing
    , _tggOAuthToken = Nothing
    , _tggTableId = pTggTableId_
    , _tggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tggQuotaUser :: Lens' TemplateGet' (Maybe Text)
tggQuotaUser
  = lens _tggQuotaUser (\ s a -> s{_tggQuotaUser = a})

-- | Returns response with indentations and line breaks.
tggPrettyPrint :: Lens' TemplateGet' Bool
tggPrettyPrint
  = lens _tggPrettyPrint
      (\ s a -> s{_tggPrettyPrint = a})

-- | Identifier for the template that is being requested
tggTemplateId :: Lens' TemplateGet' Int32
tggTemplateId
  = lens _tggTemplateId
      (\ s a -> s{_tggTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tggUserIP :: Lens' TemplateGet' (Maybe Text)
tggUserIP
  = lens _tggUserIP (\ s a -> s{_tggUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tggKey :: Lens' TemplateGet' (Maybe Key)
tggKey = lens _tggKey (\ s a -> s{_tggKey = a})

-- | OAuth 2.0 token for the current user.
tggOAuthToken :: Lens' TemplateGet' (Maybe OAuthToken)
tggOAuthToken
  = lens _tggOAuthToken
      (\ s a -> s{_tggOAuthToken = a})

-- | Table to which the template belongs
tggTableId :: Lens' TemplateGet' Text
tggTableId
  = lens _tggTableId (\ s a -> s{_tggTableId = a})

-- | Selector specifying which fields to include in a partial response.
tggFields :: Lens' TemplateGet' (Maybe Text)
tggFields
  = lens _tggFields (\ s a -> s{_tggFields = a})

instance GoogleAuth TemplateGet' where
        authKey = tggKey . _Just
        authToken = tggOAuthToken . _Just

instance GoogleRequest TemplateGet' where
        type Rs TemplateGet' = Template
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateGet'{..}
          = go _tggTableId _tggTemplateId _tggQuotaUser
              (Just _tggPrettyPrint)
              _tggUserIP
              _tggFields
              _tggKey
              _tggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TemplateGetResource)
                      r
                      u
