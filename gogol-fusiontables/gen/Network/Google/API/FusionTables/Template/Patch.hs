{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Template.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing template. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.patch@.
module Network.Google.API.FusionTables.Template.Patch
    (
    -- * REST Resource
      TemplatePatchAPI

    -- * Creating a Request
    , templatePatch'
    , TemplatePatch'

    -- * Request Lenses
    , tppQuotaUser
    , tppPrettyPrint
    , tppTemplateId
    , tppUserIp
    , tppKey
    , tppOauthToken
    , tppTableId
    , tppFields
    , tppAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.template.patch which the
-- 'TemplatePatch'' request conforms to.
type TemplatePatchAPI =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Template

-- | Updates an existing template. This method supports patch semantics.
--
-- /See:/ 'templatePatch'' smart constructor.
data TemplatePatch' = TemplatePatch'
    { _tppQuotaUser   :: !(Maybe Text)
    , _tppPrettyPrint :: !Bool
    , _tppTemplateId  :: !Int32
    , _tppUserIp      :: !(Maybe Text)
    , _tppKey         :: !(Maybe Text)
    , _tppOauthToken  :: !(Maybe Text)
    , _tppTableId     :: !Text
    , _tppFields      :: !(Maybe Text)
    , _tppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplatePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tppQuotaUser'
--
-- * 'tppPrettyPrint'
--
-- * 'tppTemplateId'
--
-- * 'tppUserIp'
--
-- * 'tppKey'
--
-- * 'tppOauthToken'
--
-- * 'tppTableId'
--
-- * 'tppFields'
--
-- * 'tppAlt'
templatePatch'
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplatePatch'
templatePatch' pTppTemplateId_ pTppTableId_ =
    TemplatePatch'
    { _tppQuotaUser = Nothing
    , _tppPrettyPrint = True
    , _tppTemplateId = pTppTemplateId_
    , _tppUserIp = Nothing
    , _tppKey = Nothing
    , _tppOauthToken = Nothing
    , _tppTableId = pTppTableId_
    , _tppFields = Nothing
    , _tppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tppQuotaUser :: Lens' TemplatePatch' (Maybe Text)
tppQuotaUser
  = lens _tppQuotaUser (\ s a -> s{_tppQuotaUser = a})

-- | Returns response with indentations and line breaks.
tppPrettyPrint :: Lens' TemplatePatch' Bool
tppPrettyPrint
  = lens _tppPrettyPrint
      (\ s a -> s{_tppPrettyPrint = a})

-- | Identifier for the template that is being updated
tppTemplateId :: Lens' TemplatePatch' Int32
tppTemplateId
  = lens _tppTemplateId
      (\ s a -> s{_tppTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tppUserIp :: Lens' TemplatePatch' (Maybe Text)
tppUserIp
  = lens _tppUserIp (\ s a -> s{_tppUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tppKey :: Lens' TemplatePatch' (Maybe Text)
tppKey = lens _tppKey (\ s a -> s{_tppKey = a})

-- | OAuth 2.0 token for the current user.
tppOauthToken :: Lens' TemplatePatch' (Maybe Text)
tppOauthToken
  = lens _tppOauthToken
      (\ s a -> s{_tppOauthToken = a})

-- | Table to which the updated template belongs
tppTableId :: Lens' TemplatePatch' Text
tppTableId
  = lens _tppTableId (\ s a -> s{_tppTableId = a})

-- | Selector specifying which fields to include in a partial response.
tppFields :: Lens' TemplatePatch' (Maybe Text)
tppFields
  = lens _tppFields (\ s a -> s{_tppFields = a})

-- | Data format for the response.
tppAlt :: Lens' TemplatePatch' Alt
tppAlt = lens _tppAlt (\ s a -> s{_tppAlt = a})

instance GoogleRequest TemplatePatch' where
        type Rs TemplatePatch' = Template
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplatePatch'{..}
          = go _tppQuotaUser (Just _tppPrettyPrint)
              _tppTemplateId
              _tppUserIp
              _tppKey
              _tppOauthToken
              _tppTableId
              _tppFields
              (Just _tppAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TemplatePatchAPI) r
                      u
