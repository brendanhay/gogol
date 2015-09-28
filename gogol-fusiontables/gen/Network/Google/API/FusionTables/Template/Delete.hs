{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Template.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.delete@.
module Network.Google.API.FusionTables.Template.Delete
    (
    -- * REST Resource
      TemplateDeleteAPI

    -- * Creating a Request
    , templateDelete'
    , TemplateDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdTemplateId
    , tdUserIp
    , tdKey
    , tdOauthToken
    , tdTableId
    , tdFields
    , tdAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.template.delete which the
-- 'TemplateDelete'' request conforms to.
type TemplateDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a template
--
-- /See:/ 'templateDelete'' smart constructor.
data TemplateDelete' = TemplateDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdTemplateId  :: !Int32
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdOauthToken  :: !(Maybe Text)
    , _tdTableId     :: !Text
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdTemplateId'
--
-- * 'tdUserIp'
--
-- * 'tdKey'
--
-- * 'tdOauthToken'
--
-- * 'tdTableId'
--
-- * 'tdFields'
--
-- * 'tdAlt'
templateDelete'
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplateDelete'
templateDelete' pTdTemplateId_ pTdTableId_ =
    TemplateDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdTemplateId = pTdTemplateId_
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdOauthToken = Nothing
    , _tdTableId = pTdTableId_
    , _tdFields = Nothing
    , _tdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TemplateDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TemplateDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | Identifier for the template which is being deleted
tdTemplateId :: Lens' TemplateDelete' Int32
tdTemplateId
  = lens _tdTemplateId (\ s a -> s{_tdTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TemplateDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TemplateDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TemplateDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Table from which the template is being deleted
tdTableId :: Lens' TemplateDelete' Text
tdTableId
  = lens _tdTableId (\ s a -> s{_tdTableId = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TemplateDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TemplateDelete' Alt
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TemplateDelete' where
        type Rs TemplateDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateDelete'{..}
          = go _tdQuotaUser (Just _tdPrettyPrint) _tdTemplateId
              _tdUserIp
              _tdKey
              _tdOauthToken
              _tdTableId
              _tdFields
              (Just _tdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TemplateDeleteAPI)
                      r
                      u
