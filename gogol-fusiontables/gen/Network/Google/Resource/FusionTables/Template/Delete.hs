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
-- Module      : Network.Google.Resource.FusionTables.Template.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateDelete@.
module Network.Google.Resource.FusionTables.Template.Delete
    (
    -- * REST Resource
      TemplateDeleteResource

    -- * Creating a Request
    , templateDelete'
    , TemplateDelete'

    -- * Request Lenses
    , tddQuotaUser
    , tddPrettyPrint
    , tddTemplateId
    , tddUserIP
    , tddKey
    , tddOAuthToken
    , tddTableId
    , tddFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateDelete@ which the
-- 'TemplateDelete'' request conforms to.
type TemplateDeleteResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a template
--
-- /See:/ 'templateDelete'' smart constructor.
data TemplateDelete' = TemplateDelete'
    { _tddQuotaUser   :: !(Maybe Text)
    , _tddPrettyPrint :: !Bool
    , _tddTemplateId  :: !Int32
    , _tddUserIP      :: !(Maybe Text)
    , _tddKey         :: !(Maybe AuthKey)
    , _tddOAuthToken  :: !(Maybe OAuthToken)
    , _tddTableId     :: !Text
    , _tddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tddQuotaUser'
--
-- * 'tddPrettyPrint'
--
-- * 'tddTemplateId'
--
-- * 'tddUserIP'
--
-- * 'tddKey'
--
-- * 'tddOAuthToken'
--
-- * 'tddTableId'
--
-- * 'tddFields'
templateDelete'
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplateDelete'
templateDelete' pTddTemplateId_ pTddTableId_ =
    TemplateDelete'
    { _tddQuotaUser = Nothing
    , _tddPrettyPrint = True
    , _tddTemplateId = pTddTemplateId_
    , _tddUserIP = Nothing
    , _tddKey = Nothing
    , _tddOAuthToken = Nothing
    , _tddTableId = pTddTableId_
    , _tddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tddQuotaUser :: Lens' TemplateDelete' (Maybe Text)
tddQuotaUser
  = lens _tddQuotaUser (\ s a -> s{_tddQuotaUser = a})

-- | Returns response with indentations and line breaks.
tddPrettyPrint :: Lens' TemplateDelete' Bool
tddPrettyPrint
  = lens _tddPrettyPrint
      (\ s a -> s{_tddPrettyPrint = a})

-- | Identifier for the template which is being deleted
tddTemplateId :: Lens' TemplateDelete' Int32
tddTemplateId
  = lens _tddTemplateId
      (\ s a -> s{_tddTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tddUserIP :: Lens' TemplateDelete' (Maybe Text)
tddUserIP
  = lens _tddUserIP (\ s a -> s{_tddUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tddKey :: Lens' TemplateDelete' (Maybe AuthKey)
tddKey = lens _tddKey (\ s a -> s{_tddKey = a})

-- | OAuth 2.0 token for the current user.
tddOAuthToken :: Lens' TemplateDelete' (Maybe OAuthToken)
tddOAuthToken
  = lens _tddOAuthToken
      (\ s a -> s{_tddOAuthToken = a})

-- | Table from which the template is being deleted
tddTableId :: Lens' TemplateDelete' Text
tddTableId
  = lens _tddTableId (\ s a -> s{_tddTableId = a})

-- | Selector specifying which fields to include in a partial response.
tddFields :: Lens' TemplateDelete' (Maybe Text)
tddFields
  = lens _tddFields (\ s a -> s{_tddFields = a})

instance GoogleAuth TemplateDelete' where
        authKey = tddKey . _Just
        authToken = tddOAuthToken . _Just

instance GoogleRequest TemplateDelete' where
        type Rs TemplateDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateDelete'{..}
          = go _tddTableId _tddTemplateId _tddQuotaUser
              (Just _tddPrettyPrint)
              _tddUserIP
              _tddFields
              _tddKey
              _tddOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TemplateDeleteResource)
                      r
                      u
