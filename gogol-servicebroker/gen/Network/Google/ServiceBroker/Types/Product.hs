{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceBroker.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceBroker.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ServiceBroker.Types.Sum

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **JSON Example**
-- { \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } **YAML Example** bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'googleIAMV1__Policy' smart constructor.
data GoogleIAMV1__Policy = GoogleIAMV1__Policy'
    { _givpEtag     :: !(Maybe Bytes)
    , _givpVersion  :: !(Maybe (Textual Int32))
    , _givpBindings :: !(Maybe [GoogleIAMV1__Binding])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleIAMV1__Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givpEtag'
--
-- * 'givpVersion'
--
-- * 'givpBindings'
googleIAMV1__Policy
    :: GoogleIAMV1__Policy
googleIAMV1__Policy =
    GoogleIAMV1__Policy'
    { _givpEtag = Nothing
    , _givpVersion = Nothing
    , _givpBindings = Nothing
    }

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
givpEtag :: Lens' GoogleIAMV1__Policy (Maybe ByteString)
givpEtag
  = lens _givpEtag (\ s a -> s{_givpEtag = a}) .
      mapping _Bytes

-- | Deprecated.
givpVersion :: Lens' GoogleIAMV1__Policy (Maybe Int32)
givpVersion
  = lens _givpVersion (\ s a -> s{_givpVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
givpBindings :: Lens' GoogleIAMV1__Policy [GoogleIAMV1__Binding]
givpBindings
  = lens _givpBindings (\ s a -> s{_givpBindings = a})
      . _Default
      . _Coerce

instance FromJSON GoogleIAMV1__Policy where
        parseJSON
          = withObject "GoogleIAMV1Policy"
              (\ o ->
                 GoogleIAMV1__Policy' <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON GoogleIAMV1__Policy where
        toJSON GoogleIAMV1__Policy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _givpEtag,
                  ("version" .=) <$> _givpVersion,
                  ("bindings" .=) <$> _givpBindings])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'googleIAMV1__TestIAMPermissionsResponse' smart constructor.
newtype GoogleIAMV1__TestIAMPermissionsResponse = GoogleIAMV1__TestIAMPermissionsResponse'
    { _givtiprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleIAMV1__TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givtiprPermissions'
googleIAMV1__TestIAMPermissionsResponse
    :: GoogleIAMV1__TestIAMPermissionsResponse
googleIAMV1__TestIAMPermissionsResponse =
    GoogleIAMV1__TestIAMPermissionsResponse'
    { _givtiprPermissions = Nothing
    }

-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
givtiprPermissions :: Lens' GoogleIAMV1__TestIAMPermissionsResponse [Text]
givtiprPermissions
  = lens _givtiprPermissions
      (\ s a -> s{_givtiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON
         GoogleIAMV1__TestIAMPermissionsResponse where
        parseJSON
          = withObject "GoogleIAMV1TestIAMPermissionsResponse"
              (\ o ->
                 GoogleIAMV1__TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON
         GoogleIAMV1__TestIAMPermissionsResponse where
        toJSON GoogleIAMV1__TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _givtiprPermissions])

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'googleType__Expr' smart constructor.
data GoogleType__Expr = GoogleType__Expr'
    { _gteLocation    :: !(Maybe Text)
    , _gteExpression  :: !(Maybe Text)
    , _gteTitle       :: !(Maybe Text)
    , _gteDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleType__Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gteLocation'
--
-- * 'gteExpression'
--
-- * 'gteTitle'
--
-- * 'gteDescription'
googleType__Expr
    :: GoogleType__Expr
googleType__Expr =
    GoogleType__Expr'
    { _gteLocation = Nothing
    , _gteExpression = Nothing
    , _gteTitle = Nothing
    , _gteDescription = Nothing
    }

-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
gteLocation :: Lens' GoogleType__Expr (Maybe Text)
gteLocation
  = lens _gteLocation (\ s a -> s{_gteLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
gteExpression :: Lens' GoogleType__Expr (Maybe Text)
gteExpression
  = lens _gteExpression
      (\ s a -> s{_gteExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
gteTitle :: Lens' GoogleType__Expr (Maybe Text)
gteTitle = lens _gteTitle (\ s a -> s{_gteTitle = a})

-- | An optional description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
gteDescription :: Lens' GoogleType__Expr (Maybe Text)
gteDescription
  = lens _gteDescription
      (\ s a -> s{_gteDescription = a})

instance FromJSON GoogleType__Expr where
        parseJSON
          = withObject "GoogleTypeExpr"
              (\ o ->
                 GoogleType__Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON GoogleType__Expr where
        toJSON GoogleType__Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _gteLocation,
                  ("expression" .=) <$> _gteExpression,
                  ("title" .=) <$> _gteTitle,
                  ("description" .=) <$> _gteDescription])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'googleIAMV1__Binding' smart constructor.
data GoogleIAMV1__Binding = GoogleIAMV1__Binding'
    { _givbMembers   :: !(Maybe [Text])
    , _givbRole      :: !(Maybe Text)
    , _givbCondition :: !(Maybe GoogleType__Expr)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleIAMV1__Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givbMembers'
--
-- * 'givbRole'
--
-- * 'givbCondition'
googleIAMV1__Binding
    :: GoogleIAMV1__Binding
googleIAMV1__Binding =
    GoogleIAMV1__Binding'
    { _givbMembers = Nothing
    , _givbRole = Nothing
    , _givbCondition = Nothing
    }

-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` . * \`serviceAccount:{emailid}\`: An email address
-- that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`domain:{domain}\`: A Google Apps domain
-- name that represents all the users of that domain. For example,
-- \`google.com\` or \`example.com\`.
givbMembers :: Lens' GoogleIAMV1__Binding [Text]
givbMembers
  = lens _givbMembers (\ s a -> s{_givbMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
givbRole :: Lens' GoogleIAMV1__Binding (Maybe Text)
givbRole = lens _givbRole (\ s a -> s{_givbRole = a})

-- | Unimplemented. The condition that is associated with this binding. NOTE:
-- an unsatisfied condition will not allow user access via current binding.
-- Different bindings, including their conditions, are examined
-- independently.
givbCondition :: Lens' GoogleIAMV1__Binding (Maybe GoogleType__Expr)
givbCondition
  = lens _givbCondition
      (\ s a -> s{_givbCondition = a})

instance FromJSON GoogleIAMV1__Binding where
        parseJSON
          = withObject "GoogleIAMV1Binding"
              (\ o ->
                 GoogleIAMV1__Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON GoogleIAMV1__Binding where
        toJSON GoogleIAMV1__Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _givbMembers,
                  ("role" .=) <$> _givbRole,
                  ("condition" .=) <$> _givbCondition])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'googleIAMV1__SetIAMPolicyRequest' smart constructor.
newtype GoogleIAMV1__SetIAMPolicyRequest = GoogleIAMV1__SetIAMPolicyRequest'
    { _givsiprPolicy :: Maybe GoogleIAMV1__Policy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleIAMV1__SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givsiprPolicy'
googleIAMV1__SetIAMPolicyRequest
    :: GoogleIAMV1__SetIAMPolicyRequest
googleIAMV1__SetIAMPolicyRequest =
    GoogleIAMV1__SetIAMPolicyRequest'
    { _givsiprPolicy = Nothing
    }

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
givsiprPolicy :: Lens' GoogleIAMV1__SetIAMPolicyRequest (Maybe GoogleIAMV1__Policy)
givsiprPolicy
  = lens _givsiprPolicy
      (\ s a -> s{_givsiprPolicy = a})

instance FromJSON GoogleIAMV1__SetIAMPolicyRequest
         where
        parseJSON
          = withObject "GoogleIAMV1SetIAMPolicyRequest"
              (\ o ->
                 GoogleIAMV1__SetIAMPolicyRequest' <$>
                   (o .:? "policy"))

instance ToJSON GoogleIAMV1__SetIAMPolicyRequest
         where
        toJSON GoogleIAMV1__SetIAMPolicyRequest'{..}
          = object
              (catMaybes [("policy" .=) <$> _givsiprPolicy])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'googleIAMV1__TestIAMPermissionsRequest' smart constructor.
newtype GoogleIAMV1__TestIAMPermissionsRequest = GoogleIAMV1__TestIAMPermissionsRequest'
    { _giamvtiamprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleIAMV1__TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvtiamprPermissions'
googleIAMV1__TestIAMPermissionsRequest
    :: GoogleIAMV1__TestIAMPermissionsRequest
googleIAMV1__TestIAMPermissionsRequest =
    GoogleIAMV1__TestIAMPermissionsRequest'
    { _giamvtiamprPermissions = Nothing
    }

-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
giamvtiamprPermissions :: Lens' GoogleIAMV1__TestIAMPermissionsRequest [Text]
giamvtiamprPermissions
  = lens _giamvtiamprPermissions
      (\ s a -> s{_giamvtiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON
         GoogleIAMV1__TestIAMPermissionsRequest where
        parseJSON
          = withObject "GoogleIAMV1TestIAMPermissionsRequest"
              (\ o ->
                 GoogleIAMV1__TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON
         GoogleIAMV1__TestIAMPermissionsRequest where
        toJSON GoogleIAMV1__TestIAMPermissionsRequest'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _giamvtiamprPermissions])
