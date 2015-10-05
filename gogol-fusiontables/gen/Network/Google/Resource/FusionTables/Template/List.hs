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
-- Module      : Network.Google.Resource.FusionTables.Template.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of templates.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateList@.
module Network.Google.Resource.FusionTables.Template.List
    (
    -- * REST Resource
      TemplateListResource

    -- * Creating a Request
    , templateList'
    , TemplateList'

    -- * Request Lenses
    , tllQuotaUser
    , tllPrettyPrint
    , tllUserIP
    , tllKey
    , tllPageToken
    , tllOAuthToken
    , tllTableId
    , tllMaxResults
    , tllFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateList@ which the
-- 'TemplateList'' request conforms to.
type TemplateListResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] TemplateList

-- | Retrieves a list of templates.
--
-- /See:/ 'templateList'' smart constructor.
data TemplateList' = TemplateList'
    { _tllQuotaUser   :: !(Maybe Text)
    , _tllPrettyPrint :: !Bool
    , _tllUserIP      :: !(Maybe Text)
    , _tllKey         :: !(Maybe Key)
    , _tllPageToken   :: !(Maybe Text)
    , _tllOAuthToken  :: !(Maybe OAuthToken)
    , _tllTableId     :: !Text
    , _tllMaxResults  :: !(Maybe Word32)
    , _tllFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tllQuotaUser'
--
-- * 'tllPrettyPrint'
--
-- * 'tllUserIP'
--
-- * 'tllKey'
--
-- * 'tllPageToken'
--
-- * 'tllOAuthToken'
--
-- * 'tllTableId'
--
-- * 'tllMaxResults'
--
-- * 'tllFields'
templateList'
    :: Text -- ^ 'tableId'
    -> TemplateList'
templateList' pTllTableId_ =
    TemplateList'
    { _tllQuotaUser = Nothing
    , _tllPrettyPrint = True
    , _tllUserIP = Nothing
    , _tllKey = Nothing
    , _tllPageToken = Nothing
    , _tllOAuthToken = Nothing
    , _tllTableId = pTllTableId_
    , _tllMaxResults = Nothing
    , _tllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tllQuotaUser :: Lens' TemplateList' (Maybe Text)
tllQuotaUser
  = lens _tllQuotaUser (\ s a -> s{_tllQuotaUser = a})

-- | Returns response with indentations and line breaks.
tllPrettyPrint :: Lens' TemplateList' Bool
tllPrettyPrint
  = lens _tllPrettyPrint
      (\ s a -> s{_tllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tllUserIP :: Lens' TemplateList' (Maybe Text)
tllUserIP
  = lens _tllUserIP (\ s a -> s{_tllUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tllKey :: Lens' TemplateList' (Maybe Key)
tllKey = lens _tllKey (\ s a -> s{_tllKey = a})

-- | Continuation token specifying which results page to return. Optional.
tllPageToken :: Lens' TemplateList' (Maybe Text)
tllPageToken
  = lens _tllPageToken (\ s a -> s{_tllPageToken = a})

-- | OAuth 2.0 token for the current user.
tllOAuthToken :: Lens' TemplateList' (Maybe OAuthToken)
tllOAuthToken
  = lens _tllOAuthToken
      (\ s a -> s{_tllOAuthToken = a})

-- | Identifier for the table whose templates are being requested
tllTableId :: Lens' TemplateList' Text
tllTableId
  = lens _tllTableId (\ s a -> s{_tllTableId = a})

-- | Maximum number of templates to return. Optional. Default is 5.
tllMaxResults :: Lens' TemplateList' (Maybe Word32)
tllMaxResults
  = lens _tllMaxResults
      (\ s a -> s{_tllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tllFields :: Lens' TemplateList' (Maybe Text)
tllFields
  = lens _tllFields (\ s a -> s{_tllFields = a})

instance GoogleAuth TemplateList' where
        authKey = tllKey . _Just
        authToken = tllOAuthToken . _Just

instance GoogleRequest TemplateList' where
        type Rs TemplateList' = TemplateList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateList'{..}
          = go _tllTableId _tllPageToken _tllMaxResults
              _tllQuotaUser
              (Just _tllPrettyPrint)
              _tllUserIP
              _tllFields
              _tllKey
              _tllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TemplateListResource)
                      r
                      u
