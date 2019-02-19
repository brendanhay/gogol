{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BinaryAuthorization.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BinaryAuthorization.Types.Product where

import           Network.Google.BinaryAuthorization.Types.Sum
import           Network.Google.Prelude

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }

-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | An optional description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | An user owned drydock note references a Drydock ATTESTATION_AUTHORITY
-- Note created by the user.
--
-- /See:/ 'userOwnedDrydockNote' smart constructor.
data UserOwnedDrydockNote =
  UserOwnedDrydockNote'
    { _uodnDelegationServiceAccountEmail :: !(Maybe Text)
    , _uodnPublicKeys                    :: !(Maybe [AttestorPublicKey])
    , _uodnNoteReference                 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserOwnedDrydockNote' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uodnDelegationServiceAccountEmail'
--
-- * 'uodnPublicKeys'
--
-- * 'uodnNoteReference'
userOwnedDrydockNote
    :: UserOwnedDrydockNote
userOwnedDrydockNote =
  UserOwnedDrydockNote'
    { _uodnDelegationServiceAccountEmail = Nothing
    , _uodnPublicKeys = Nothing
    , _uodnNoteReference = Nothing
    }

-- | Output only. This field will contain the service account email address
-- that this Attestor will use as the principal when querying Container
-- Analysis. Attestor administrators must grant this service account the
-- IAM role needed to read attestations from the note_reference in
-- Container Analysis (\`containeranalysis.notes.occurrences.viewer\`).
-- This email address is fixed for the lifetime of the Attestor, but
-- callers should not make any other assumptions about the service account
-- email; future versions may use an email based on a different naming
-- pattern.
uodnDelegationServiceAccountEmail :: Lens' UserOwnedDrydockNote (Maybe Text)
uodnDelegationServiceAccountEmail
  = lens _uodnDelegationServiceAccountEmail
      (\ s a -> s{_uodnDelegationServiceAccountEmail = a})

-- | Optional. Public keys that verify attestations signed by this attestor.
-- This field may be updated. If this field is non-empty, one of the
-- specified public keys must verify that an attestation was signed by this
-- attestor for the image specified in the admission request. If this field
-- is empty, this attestor always returns that no valid attestations exist.
uodnPublicKeys :: Lens' UserOwnedDrydockNote [AttestorPublicKey]
uodnPublicKeys
  = lens _uodnPublicKeys
      (\ s a -> s{_uodnPublicKeys = a})
      . _Default
      . _Coerce

-- | Required. The Drydock resource name of a ATTESTATION_AUTHORITY Note,
-- created by the user, in the format: \`projects\/*\/notes\/*\` (or the
-- legacy \`providers\/*\/notes\/*\`). This field may not be updated. An
-- attestation by this attestor is stored as a Drydock
-- ATTESTATION_AUTHORITY Occurrence that names a container image and that
-- links to this Note. Drydock is an external dependency.
uodnNoteReference :: Lens' UserOwnedDrydockNote (Maybe Text)
uodnNoteReference
  = lens _uodnNoteReference
      (\ s a -> s{_uodnNoteReference = a})

instance FromJSON UserOwnedDrydockNote where
        parseJSON
          = withObject "UserOwnedDrydockNote"
              (\ o ->
                 UserOwnedDrydockNote' <$>
                   (o .:? "delegationServiceAccountEmail") <*>
                     (o .:? "publicKeys" .!= mempty)
                     <*> (o .:? "noteReference"))

instance ToJSON UserOwnedDrydockNote where
        toJSON UserOwnedDrydockNote'{..}
          = object
              (catMaybes
                 [("delegationServiceAccountEmail" .=) <$>
                    _uodnDelegationServiceAccountEmail,
                  ("publicKeys" .=) <$> _uodnPublicKeys,
                  ("noteReference" .=) <$> _uodnNoteReference])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprPolicy :: Maybe IAMPolicy
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest = SetIAMPolicyRequest' {_siprPolicy = Nothing}

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe IAMPolicy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o -> SetIAMPolicyRequest' <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | Response message for BinauthzManagementService.ListAttestors.
--
-- /See:/ 'listAttestorsResponse' smart constructor.
data ListAttestorsResponse =
  ListAttestorsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larAttestors     :: !(Maybe [Attestor])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAttestorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larAttestors'
listAttestorsResponse
    :: ListAttestorsResponse
listAttestorsResponse =
  ListAttestorsResponse' {_larNextPageToken = Nothing, _larAttestors = Nothing}

-- | A token to retrieve the next page of results. Pass this value in the
-- ListAttestorsRequest.page_token field in the subsequent call to the
-- \`ListAttestors\` method to retrieve the next page of results.
larNextPageToken :: Lens' ListAttestorsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | The list of attestors.
larAttestors :: Lens' ListAttestorsResponse [Attestor]
larAttestors
  = lens _larAttestors (\ s a -> s{_larAttestors = a})
      . _Default
      . _Coerce

instance FromJSON ListAttestorsResponse where
        parseJSON
          = withObject "ListAttestorsResponse"
              (\ o ->
                 ListAttestorsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "attestors" .!= mempty))

instance ToJSON ListAttestorsResponse where
        toJSON ListAttestorsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("attestors" .=) <$> _larAttestors])

-- | An admission whitelist pattern exempts images from checks by admission
-- rules.
--
-- /See:/ 'admissionWhiteListPattern' smart constructor.
newtype AdmissionWhiteListPattern =
  AdmissionWhiteListPattern'
    { _awlpNamePattern :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdmissionWhiteListPattern' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awlpNamePattern'
admissionWhiteListPattern
    :: AdmissionWhiteListPattern
admissionWhiteListPattern =
  AdmissionWhiteListPattern' {_awlpNamePattern = Nothing}

-- | An image name pattern to whitelist, in the form
-- \`registry\/path\/to\/image\`. This supports a trailing \`*\` as a
-- wildcard, but this is allowed only in text after the \`registry\/\`
-- part.
awlpNamePattern :: Lens' AdmissionWhiteListPattern (Maybe Text)
awlpNamePattern
  = lens _awlpNamePattern
      (\ s a -> s{_awlpNamePattern = a})

instance FromJSON AdmissionWhiteListPattern where
        parseJSON
          = withObject "AdmissionWhiteListPattern"
              (\ o ->
                 AdmissionWhiteListPattern' <$> (o .:? "namePattern"))

instance ToJSON AdmissionWhiteListPattern where
        toJSON AdmissionWhiteListPattern'{..}
          = object
              (catMaybes [("namePattern" .=) <$> _awlpNamePattern])

-- | An admission rule specifies either that all container images used in a
-- pod creation request must be attested to by one or more attestors, that
-- all pod creations will be allowed, or that all pod creations will be
-- denied. Images matching an admission whitelist pattern are exempted from
-- admission rules and will never block a pod creation.
--
-- /See:/ 'admissionRule' smart constructor.
data AdmissionRule =
  AdmissionRule'
    { _arEnforcementMode       :: !(Maybe AdmissionRuleEnforcementMode)
    , _arEvaluationMode        :: !(Maybe AdmissionRuleEvaluationMode)
    , _arRequireAttestationsBy :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdmissionRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arEnforcementMode'
--
-- * 'arEvaluationMode'
--
-- * 'arRequireAttestationsBy'
admissionRule
    :: AdmissionRule
admissionRule =
  AdmissionRule'
    { _arEnforcementMode = Nothing
    , _arEvaluationMode = Nothing
    , _arRequireAttestationsBy = Nothing
    }

-- | Required. The action when a pod creation is denied by the admission
-- rule.
arEnforcementMode :: Lens' AdmissionRule (Maybe AdmissionRuleEnforcementMode)
arEnforcementMode
  = lens _arEnforcementMode
      (\ s a -> s{_arEnforcementMode = a})

-- | Required. How this admission rule will be evaluated.
arEvaluationMode :: Lens' AdmissionRule (Maybe AdmissionRuleEvaluationMode)
arEvaluationMode
  = lens _arEvaluationMode
      (\ s a -> s{_arEvaluationMode = a})

-- | Optional. The resource names of the attestors that must attest to a
-- container image, in the format \`projects\/*\/attestors\/*\`. Each
-- attestor must exist before a policy can reference it. To add an attestor
-- to a policy the principal issuing the policy change request must be able
-- to read the attestor resource. Note: this field must be non-empty when
-- the evaluation_mode field specifies REQUIRE_ATTESTATION, otherwise it
-- must be empty.
arRequireAttestationsBy :: Lens' AdmissionRule [Text]
arRequireAttestationsBy
  = lens _arRequireAttestationsBy
      (\ s a -> s{_arRequireAttestationsBy = a})
      . _Default
      . _Coerce

instance FromJSON AdmissionRule where
        parseJSON
          = withObject "AdmissionRule"
              (\ o ->
                 AdmissionRule' <$>
                   (o .:? "enforcementMode") <*>
                     (o .:? "evaluationMode")
                     <*> (o .:? "requireAttestationsBy" .!= mempty))

instance ToJSON AdmissionRule where
        toJSON AdmissionRule'{..}
          = object
              (catMaybes
                 [("enforcementMode" .=) <$> _arEnforcementMode,
                  ("evaluationMode" .=) <$> _arEvaluationMode,
                  ("requireAttestationsBy" .=) <$>
                    _arRequireAttestationsBy])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}

-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

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
-- /See:/ 'iamPolicy' smart constructor.
data IAMPolicy =
  IAMPolicy'
    { _ipEtag     :: !(Maybe Bytes)
    , _ipVersion  :: !(Maybe (Textual Int32))
    , _ipBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'IAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipEtag'
--
-- * 'ipVersion'
--
-- * 'ipBindings'
iamPolicy
    :: IAMPolicy
iamPolicy =
  IAMPolicy' {_ipEtag = Nothing, _ipVersion = Nothing, _ipBindings = Nothing}

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
ipEtag :: Lens' IAMPolicy (Maybe ByteString)
ipEtag
  = lens _ipEtag (\ s a -> s{_ipEtag = a}) .
      mapping _Bytes

-- | Deprecated.
ipVersion :: Lens' IAMPolicy (Maybe Int32)
ipVersion
  = lens _ipVersion (\ s a -> s{_ipVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
ipBindings :: Lens' IAMPolicy [Binding]
ipBindings
  = lens _ipBindings (\ s a -> s{_ipBindings = a}) .
      _Default
      . _Coerce

instance FromJSON IAMPolicy where
        parseJSON
          = withObject "IAMPolicy"
              (\ o ->
                 IAMPolicy' <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON IAMPolicy where
        toJSON IAMPolicy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ipEtag,
                  ("version" .=) <$> _ipVersion,
                  ("bindings" .=) <$> _ipBindings])

-- | An attestator public key that will be used to verify attestations signed
-- by this attestor.
--
-- /See:/ 'attestorPublicKey' smart constructor.
data AttestorPublicKey =
  AttestorPublicKey'
    { _apkAsciiArmoredPgpPublicKey :: !(Maybe Text)
    , _apkId                       :: !(Maybe Text)
    , _apkComment                  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AttestorPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkAsciiArmoredPgpPublicKey'
--
-- * 'apkId'
--
-- * 'apkComment'
attestorPublicKey
    :: AttestorPublicKey
attestorPublicKey =
  AttestorPublicKey'
    { _apkAsciiArmoredPgpPublicKey = Nothing
    , _apkId = Nothing
    , _apkComment = Nothing
    }

-- | ASCII-armored representation of a PGP public key, as the entire output
-- by the command \`gpg --export --armor foo\'example.com\` (either LF or
-- CRLF line endings).
apkAsciiArmoredPgpPublicKey :: Lens' AttestorPublicKey (Maybe Text)
apkAsciiArmoredPgpPublicKey
  = lens _apkAsciiArmoredPgpPublicKey
      (\ s a -> s{_apkAsciiArmoredPgpPublicKey = a})

-- | Output only. This field will be overwritten with key ID information, for
-- example, an identifier extracted from a PGP public key. This field may
-- not be updated.
apkId :: Lens' AttestorPublicKey (Maybe Text)
apkId = lens _apkId (\ s a -> s{_apkId = a})

-- | Optional. A descriptive comment. This field may be updated.
apkComment :: Lens' AttestorPublicKey (Maybe Text)
apkComment
  = lens _apkComment (\ s a -> s{_apkComment = a})

instance FromJSON AttestorPublicKey where
        parseJSON
          = withObject "AttestorPublicKey"
              (\ o ->
                 AttestorPublicKey' <$>
                   (o .:? "asciiArmoredPgpPublicKey") <*> (o .:? "id")
                     <*> (o .:? "comment"))

instance ToJSON AttestorPublicKey where
        toJSON AttestorPublicKey'{..}
          = object
              (catMaybes
                 [("asciiArmoredPgpPublicKey" .=) <$>
                    _apkAsciiArmoredPgpPublicKey,
                  ("id" .=) <$> _apkId,
                  ("comment" .=) <$> _apkComment])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}

-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | A policy for container image binary authorization.
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pDefaultAdmissionRule       :: !(Maybe AdmissionRule)
    , _pAdmissionWhiteListPatterns :: !(Maybe [AdmissionWhiteListPattern])
    , _pClusterAdmissionRules      :: !(Maybe PolicyClusterAdmissionRules)
    , _pUpdateTime                 :: !(Maybe DateTime')
    , _pName                       :: !(Maybe Text)
    , _pDescription                :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pDefaultAdmissionRule'
--
-- * 'pAdmissionWhiteListPatterns'
--
-- * 'pClusterAdmissionRules'
--
-- * 'pUpdateTime'
--
-- * 'pName'
--
-- * 'pDescription'
policy
    :: Policy
policy =
  Policy'
    { _pDefaultAdmissionRule = Nothing
    , _pAdmissionWhiteListPatterns = Nothing
    , _pClusterAdmissionRules = Nothing
    , _pUpdateTime = Nothing
    , _pName = Nothing
    , _pDescription = Nothing
    }

-- | Required. Default admission rule for a cluster without a per-cluster
-- admission rule.
pDefaultAdmissionRule :: Lens' Policy (Maybe AdmissionRule)
pDefaultAdmissionRule
  = lens _pDefaultAdmissionRule
      (\ s a -> s{_pDefaultAdmissionRule = a})

-- | Optional. Admission policy whitelisting. A matching admission request
-- will always be permitted. This feature is typically used to exclude
-- Google or third-party infrastructure images from Binary Authorization
-- policies.
pAdmissionWhiteListPatterns :: Lens' Policy [AdmissionWhiteListPattern]
pAdmissionWhiteListPatterns
  = lens _pAdmissionWhiteListPatterns
      (\ s a -> s{_pAdmissionWhiteListPatterns = a})
      . _Default
      . _Coerce

-- | Optional. Per-cluster admission rules. Cluster spec format:
-- \`location.clusterId\`. There can be at most one admission rule per
-- cluster spec. A \`location\` is either a compute zone (e.g.
-- us-central1-a) or a region (e.g. us-central1). For \`clusterId\` syntax
-- restrictions see
-- https:\/\/cloud.google.com\/container-engine\/reference\/rest\/v1\/projects.zones.clusters.
pClusterAdmissionRules :: Lens' Policy (Maybe PolicyClusterAdmissionRules)
pClusterAdmissionRules
  = lens _pClusterAdmissionRules
      (\ s a -> s{_pClusterAdmissionRules = a})

-- | Output only. Time when the policy was last updated.
pUpdateTime :: Lens' Policy (Maybe UTCTime)
pUpdateTime
  = lens _pUpdateTime (\ s a -> s{_pUpdateTime = a}) .
      mapping _DateTime

-- | Output only. The resource name, in the format \`projects\/*\/policy\`.
-- There is at most one policy per project.
pName :: Lens' Policy (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Optional. A descriptive comment.
pDescription :: Lens' Policy (Maybe Text)
pDescription
  = lens _pDescription (\ s a -> s{_pDescription = a})

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "defaultAdmissionRule") <*>
                     (o .:? "admissionWhitelistPatterns" .!= mempty)
                     <*> (o .:? "clusterAdmissionRules")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "description"))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("defaultAdmissionRule" .=) <$>
                    _pDefaultAdmissionRule,
                  ("admissionWhitelistPatterns" .=) <$>
                    _pAdmissionWhiteListPatterns,
                  ("clusterAdmissionRules" .=) <$>
                    _pClusterAdmissionRules,
                  ("updateTime" .=) <$> _pUpdateTime,
                  ("name" .=) <$> _pName,
                  ("description" .=) <$> _pDescription])

-- | Optional. Per-cluster admission rules. Cluster spec format:
-- \`location.clusterId\`. There can be at most one admission rule per
-- cluster spec. A \`location\` is either a compute zone (e.g.
-- us-central1-a) or a region (e.g. us-central1). For \`clusterId\` syntax
-- restrictions see
-- https:\/\/cloud.google.com\/container-engine\/reference\/rest\/v1\/projects.zones.clusters.
--
-- /See:/ 'policyClusterAdmissionRules' smart constructor.
newtype PolicyClusterAdmissionRules =
  PolicyClusterAdmissionRules'
    { _pcarAddtional :: HashMap Text AdmissionRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyClusterAdmissionRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcarAddtional'
policyClusterAdmissionRules
    :: HashMap Text AdmissionRule -- ^ 'pcarAddtional'
    -> PolicyClusterAdmissionRules
policyClusterAdmissionRules pPcarAddtional_ =
  PolicyClusterAdmissionRules' {_pcarAddtional = _Coerce # pPcarAddtional_}

pcarAddtional :: Lens' PolicyClusterAdmissionRules (HashMap Text AdmissionRule)
pcarAddtional
  = lens _pcarAddtional
      (\ s a -> s{_pcarAddtional = a})
      . _Coerce

instance FromJSON PolicyClusterAdmissionRules where
        parseJSON
          = withObject "PolicyClusterAdmissionRules"
              (\ o ->
                 PolicyClusterAdmissionRules' <$> (parseJSONObject o))

instance ToJSON PolicyClusterAdmissionRules where
        toJSON = toJSON . _pcarAddtional

-- | An attestor that attests to container image artifacts. An existing
-- attestor cannot be modified except where indicated.
--
-- /See:/ 'attestor' smart constructor.
data Attestor =
  Attestor'
    { _aUserOwnedDrydockNote :: !(Maybe UserOwnedDrydockNote)
    , _aUpdateTime           :: !(Maybe DateTime')
    , _aName                 :: !(Maybe Text)
    , _aDescription          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Attestor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aUserOwnedDrydockNote'
--
-- * 'aUpdateTime'
--
-- * 'aName'
--
-- * 'aDescription'
attestor
    :: Attestor
attestor =
  Attestor'
    { _aUserOwnedDrydockNote = Nothing
    , _aUpdateTime = Nothing
    , _aName = Nothing
    , _aDescription = Nothing
    }

-- | A Drydock ATTESTATION_AUTHORITY Note, created by the user.
aUserOwnedDrydockNote :: Lens' Attestor (Maybe UserOwnedDrydockNote)
aUserOwnedDrydockNote
  = lens _aUserOwnedDrydockNote
      (\ s a -> s{_aUserOwnedDrydockNote = a})

-- | Output only. Time when the attestor was last updated.
aUpdateTime :: Lens' Attestor (Maybe UTCTime)
aUpdateTime
  = lens _aUpdateTime (\ s a -> s{_aUpdateTime = a}) .
      mapping _DateTime

-- | Required. The resource name, in the format:
-- \`projects\/*\/attestors\/*\`. This field may not be updated.
aName :: Lens' Attestor (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Optional. A descriptive comment. This field may be updated. The field
-- may be displayed in chooser dialogs.
aDescription :: Lens' Attestor (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

instance FromJSON Attestor where
        parseJSON
          = withObject "Attestor"
              (\ o ->
                 Attestor' <$>
                   (o .:? "userOwnedDrydockNote") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "description"))

instance ToJSON Attestor where
        toJSON Attestor'{..}
          = object
              (catMaybes
                 [("userOwnedDrydockNote" .=) <$>
                    _aUserOwnedDrydockNote,
                  ("updateTime" .=) <$> _aUpdateTime,
                  ("name" .=) <$> _aName,
                  ("description" .=) <$> _aDescription])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}

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
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | Unimplemented. The condition that is associated with this binding. NOTE:
-- an unsatisfied condition will not allow user access via current binding.
-- Different bindings, including their conditions, are examined
-- independently.
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])
